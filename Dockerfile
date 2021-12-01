FROM python:3

# 環境変数の設定
ENV TZ=Asia/Tokyo
ENV DEBIAN_FRONTEND=noninteractive

# 必要なパッケージのインストール
RUN apt-get update && \
    apt-get install -y software-properties-common build-essential unzip git cmake cmake-curses-gui libblas-dev \
    libopenblas-dev libatlas-base-dev liblapack-dev libboost-all-dev libopencv-core-dev \
    libopencv-imgproc-dev libopencv-dev libopencv-highgui-dev \
    protobuf-compiler libprotobuf-dev libhdf5-dev libjson-c-dev libx11-dev wget ninja-build && \
    # add-apt-repository ppa:openjdk-r/ppa && apt-get update && \
    # apt-get install -y openjdk-8-jdk && \
    pip install pyyaml typing

# 作業ディレクトリの設定
WORKDIR /workspace