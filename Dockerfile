
FROM ruby:2.3.1

RUN apt-get update -y && \
    apt-get install openssh-client spiped -y

RUN gem install gs
RUN mkdir -p .gs
RUN gs gem install dep
RUN gs sh -c 'dep install'
