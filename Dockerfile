FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.6.5

RUN gem install eventmachine-tail --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["rtail"]
CMD ["--help"]
