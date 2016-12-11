FROM docker.io/centos:latest
MAINTAINER    tomokitamaki

# ワーキングディレクトリを指定すべて/root/で実行されるようにする。
WORKDIR /root

# pyenvとpythonのインストールに必要なものをインストール
RUN yum install -y git gcc make bzip2-libs.x86_64 bzip2 bzip2-devel.x86_64 readline readline-devel.x86_64 openssl openssl-devel.x86_64 sqlite-devel.x86_64 patch

# pyenvをcloneしてくる
RUN git clone https://github.com/yyuu/pyenv.git /root/.pyenv

# pyenvの使用のための.bash_profileをコピー
ADD .bash_profile /root/

# pythonのインストールと使用するバージョンの指定し最後にpipをupdate
# &&でsourceに続けて実行しないとpyenvというコマンドがないというエラーになるので&&で繋げています。
RUN source /root/.bash_profile && \
pyenv install 3.5.2 && \
pyenv global 3.5.2 && \
pip install --upgrade pip


# run時にbash_profileが読み込まれるようにする。
CMD ["/bin/bash", "--login"]
