# 概要
dockerio/centos:7.3.1611のcentos7イメージを元にして、  
gitとpython3.5をインストールするdockerfile

# 作った経緯
dockerのコンテナ上でpythonで何かを作りたいなと  
思ったときに手元にいいイメージがなかったので、作成しました。  

# 使い方
## 前提
- dockerがインストール済み
- docker コマンドを実行する時にsudoはいらない環境

## 実行方法
dockerfileをダウンロードしてdockerfileがあるディレクトリで  
以下のコマンドを実行します。  
(もしdockerコマンドの実行時にsudoがいる場合はsudoをつけてください。)  
`docker build --tag centos73:python35_git .`
