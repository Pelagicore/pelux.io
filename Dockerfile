FROM ubuntu:17.10

RUN apt-get update && apt-get install -y \
    git \
    gcc \
    make \
    ruby \
    ruby-dev \
    locales \
    ruby-bundler \
    zlib1g-dev \
    curl

RUN rm -rf /var/lib/apt/lists/*

# Add support for UTF-8.
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
