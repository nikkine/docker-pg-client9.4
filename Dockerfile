FROM debian:jessie
MAINTAINER Nikkine <bkr@nikkine.org>

RUN apt-get update
RUN apt-get install postgresql-client-9.4 git -y
RUN apt-get upgrade bash -y

ENV PGHOST=172.17.0.1
ENV PGUSER=postgres
ENV PGDATABASE=postgres
ENV PGPORT=5432
ENV PGSSLMODE=disable

CMD ["/bin/bash"]
