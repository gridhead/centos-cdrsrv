FROM docker.io/centos:latest
WORKDIR /data
RUN dnf install wget git -y
RUN wget https://github.com/cdr/code-server/releases/download/v3.10.2/code-server-3.10.2-amd64.rpm
RUN dnf remove wget -y
RUN dnf install code-server-3.10.2-amd64.rpm -y
RUN rm code-server-3.10.2-amd64.rpm
ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:4444", "--auth", "none"]
EXPOSE 4444
