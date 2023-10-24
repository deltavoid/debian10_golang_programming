FROM deltavoid/debian10_golang_basic:2023.10.24

SHELL ["/bin/bash", "-c"]

RUN mkdir -p /data/zhangqianyu/WorkSpace && \
    cd /data/zhangqianyu/WorkSpace && \
    git clone https://github.com/deltavoid/GolangProgramming.git

RUN cd /data/zhangqianyu/WorkSpace/GolangProgramming/project_management/hello && \
    go run main.go

