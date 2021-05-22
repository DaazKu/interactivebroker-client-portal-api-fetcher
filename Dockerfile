FROM ubuntu:20.04

RUN useradd -ms /bin/bash -u 2000 ibfetcher

RUN apt-get update && apt-get install -y \
    curl

USER ibfetcher
WORKDIR /home/ibfetcher

RUN mkdir /tmp/ibcpaf_download_dir

COPY src/entrypoint /bin/entrypoint

ENTRYPOINT ["/bin/entrypoint"]
