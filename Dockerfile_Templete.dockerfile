FROM ubuntu:24.04

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone
RUN apt update && apt upgrade -y

# カレントディレクトリ
WORKDIR /artifact

# 必要なAPTパッケージを適当にインストール
# RUN apt install -y ${apt-package}
RUN apt updata
RUN apt upgrade
# Gitリポジトリを展開しても良い
# RUN git clone ${repository}
RUN git clone https://github.com/oss-experiment-uec/2024-k2210190-fastapi
# Dockerfileを実行する場所からファイルをコピーする場合
# COPY . /artifact

RUN pip install "fastapi[all]"