FROM centos:7.3.1611

# ワーキングディレクトリを指定すべて/root/で実行されるようにする。
WORKDIR /root

# gitとiusリポジトリのインストール
RUN yum update -y && yum upgrade && \
yum install -y git https://centos7.iuscommunity.org/ius-release.rpm

# python3.5のインストール
RUN yum install -y python35u python35u-libs python35u-devel python35u-pip

# pythonのコマンドでpythonの3.5を使えるように修正。あとpipも。
RUN unlink /bin/python && \
    ln -s /bin/python3.5 /bin/python && \
    ln -s /bin/pip3.5 /bin/pip
