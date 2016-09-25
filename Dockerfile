FROM docker.io/centos:latest
MAINTAINER    tomokitamaki

# ワーキングディレクトリを指定すべて/root/で実行されるようにする。
WORKDIR ~/

# pyenvとpythonのインストールに必要なものをインストール
RUN yum install -y git gcc make bzip2-libs.x86_64 bzip2 bzip2-devel.x86_64 readline readline-devel.x86_64 openssl openssl-devel.x86_64 sqlite-devel.x86_64

# pyenvをcloneしてくる
RUN git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# pyenvの使用のために設定を書き込む。以下の3つのechoがそれ。
RUN echo "export PYENV_ROOT=\$HOME/.pyenv" >> ~/.bash_profile
RUN echo "export PATH=\$PYENV_ROOT/bin:\$PATH" >> ~/.bash_profile
RUN echo "eval \"\$(pyenv init -)\"" >> ~/.bash_profile

# pythonのインストールと使用するバージョンの指定し最後にpipをupdate
# &&でsourceに続けて実行しないとpyenvというコマンドがないというエラーになるので&&で繋げています。
RUN source ~/.bash_profile && \
pyenv install 3.5.2 && \
pyenv local 3.5.2 && \
pip install --upgrade pip
