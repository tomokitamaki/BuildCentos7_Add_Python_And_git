# 概要
dockerio/centos:latestのcentos7イメージを元にして、  
gitとpyenvを使ってpython3.5.2をインストールするdockerfile

# 作った経緯
dockerのコンテナ上でpythonで何かを作りたいなと  
思ったときに手元にいいイメージがなかったので、作成しました。  

# 使い方
## 前提
- dockerがインストール済み
- dockerio/centos:latestがダウンロード済み  
centos7です。  
## 実行方法
dockerfileをダウンロードしてdockerfileがあるディレクトリで  
以下のコマンドを実行します。  
`sudo docker build -t centos:Python_Git .`
