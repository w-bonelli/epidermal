# FROM ubuntu:xenial
FROM bvlc/caffe:cpu
RUN apt-get update && \
    apt-get install -y \
    python \
    python-pip \
    python-tk \
    python-setuptools
COPY . /opt/epidermal
WORKDIR /opt/epidermal
RUN chmod +x install_python_dependencies.sh && \
    ./install_python_dependencies.sh
