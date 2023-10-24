FROM deltavoid/debian10_golang_basic:2023.10.24

SHELL ["/bin/bash", "--login", "-c"]

RUN cat ~/.bashrc

RUN echo $0

RUN env
# RUN env | grep SHELL

# RUN source ~/.bashrc

RUN go version


RUN mkdir -p /data/zhangqianyu/WorkSpace && \
    cd /data/zhangqianyu/WorkSpace && \
    git clone https://github.com/deltavoid/GolangProgramming.git

RUN cd /data/zhangqianyu/WorkSpace/GolangProgramming/project_management/hello && \
    go run main.go

