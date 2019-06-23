FROM nginx
RUN apt-get update && apt-get install -y \
  build-essential \
  perl-modules-5.24 \
  && rm -fr /var/lib/apt/lists/*
COPY ./conf/.cpan /root/.cpan
RUN cpan JSON::Validator
RUN cpan Mojolicious::Plugin::OpenAPI
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./dist/html /usr/share/nginx/html

#vim: set syntax=dockerfile ts=2 sw=2 sts=2 expandtab ff=unix fenc=utf-8:
