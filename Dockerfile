FROM deltavoid/debian10_dev_basic:2023.07.20

RUN apt-get update && \
    apt-get install -y git g++ make libssl-dev libgflags-dev libprotobuf-dev libprotoc-dev protobuf-compiler libleveldb-dev


RUN mkdir -p /data/zhangqianyu/WorkSpace && \
    cd /data/zhangqianyu/WorkSpace && \
    git clone https://github.com/deltavoid/brpc.git

RUN cd /data/zhangqianyu/WorkSpace/brpc && \
    sh config_brpc.sh --headers=/usr/include --libs=/usr/lib && \
    make -j8

RUN cd /data/zhangqianyu/WorkSpace/brpc/example/echo_c++ && \
    make 



ADD test.sh /data/zhangqianyu/WorkSpace/

RUN cd /data/zhangqianyu/WorkSpace && \
    bash ./test.sh brpc/example/echo_c++
