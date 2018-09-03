FROM postgres:10.3

RUN apt-get update \
   && apt-get upgrade -y \
   && apt-get install -y \
   build-essential \
   ca-certificates \
   pkg-config \
   curl \
   gcc \
   g++ \
   git \
   libc++-dev \
   libpq-dev \
   postgresql-server-dev-$PG_MAJOR \
   make \
   python-pip \
   python2.7 \
   python2.7-dev

RUN apt-get autoremove \
  && apt-get clean
