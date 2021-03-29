# centos-cdrsrv
A self-hosted Code server with preinstalled Git on CentOS 8

## Releases

### v3.9.1

#### Release

The release can be found [here](https://hub.docker.com/layers/t0xic0der/cdrsrv/v3.9.1-centos8/images/sha256-641f34c76435828d09ae2063b4e9c7fcec5b158753da827e0a5e5e23d30f433e?context=repo).

#### Usage

Run the following command.

```
docker run -d \
  -p 4444:4444 \
  -v <path/to/workspace>:/data \
  --name centos-cdrsrv \
  --restart unless-stopped \
  t0xic0der/cdrsrv:v3.9.1-centos8
```

#### Dockerfile

```
FROM centos:latest
WORKDIR /data
RUN dnf install wget git -y
RUN wget https://github.com/cdr/code-server/releases/download/v3.9.1/code-server-3.9.1-arm64.rpm
RUN dnf remove wget -y
RUN dnf install code-server-3.9.1-arm64.rpm -y
RUN rm code-server-3.9.1-arm64.rpm
ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:4444", "--auth", "none"]
EXPOSE 4444
```

### v3.9.0

#### Release

The release can be found [here](https://hub.docker.com/layers/t0xic0der/cdrsrv/v3.9.0-centos8/images/sha256-9ce968caa933948ebe79db3885857df83ccf8d464a5395e6d1b2888ad59cbfa5?context=repo).

#### Usage

Run the following command.

```
docker run -d \
  -p 4444:4444 \
  -v <path/to/workspace>:/data \
  --name centos-cdrsrv \
  --restart unless-stopped \
  t0xic0der/cdrsrv:v3.9.0-centos8
```

#### Dockerfile

```
FROM centos:latest
WORKDIR /data
RUN dnf install wget git -y
RUN wget https://github.com/cdr/code-server/releases/download/v3.9.0/code-server-3.9.0-arm64.rpm
RUN dnf remove wget -y
RUN dnf install code-server-3.9.0-arm64.rpm -y
RUN rm code-server-3.9.0-arm64.rpm
ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:4444", "--auth", "none"]
EXPOSE 4444
```
