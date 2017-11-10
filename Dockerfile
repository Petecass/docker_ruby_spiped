
FROM ruby:2.3.1

RUN apt-get update -y && \
    apt-get install openssh-client spiped -y

RUN gem install gs && \
    mkdir -p .gs && \
    gs gem install dep && \
    gs sh -c 'dep install'
