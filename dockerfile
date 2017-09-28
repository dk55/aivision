FROM nvidia/cuda-ppc64le:8.0-cudnn5-runtime-ubuntu16.04
MAINTAINER Yubo Li <liyubobj@cn.ibm.com>

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get clean

# import PowerAI repo
RUN cd /tmp && \
    wget https://public.dhe.ibm.com/software/server/POWER/Linux/mldl/ubuntu/mldl-repo-network_4.0.0_ppc64el.deb && \
    dpkg -i mldl-repo-network_4.0.0_ppc64el.deb && \
    rm mldl-repo-network_4.0.0_ppc64el.deb

# install tensorflow
RUN apt-get update && \
    apt-get install -y power-mldl && \
    apt-get clean
