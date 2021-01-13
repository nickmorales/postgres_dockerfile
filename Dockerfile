FROM postgres:12

ENV POSTGRES_PASSWORD=postgres

RUN apt-get update -y --allow-unauthenticated
RUN apt-get upgrade -y
RUN apt-get install -y git nano

RUN git clone --branch master --depth 1 https://github.com/nickmorales/sgn.git \
    && cd sgn \
    && git checkout master

RUN mkdir -p docker-entrypoint-initdb.d
COPY 01_init-user-db_01.sh /docker-entrypoint-initdb.d/01_init-user-db_01.sh
COPY 02_load_empty_fixture_sql_02.sh /docker-entrypoint-initdb.d/02_load_empty_fixture_sql_02.sh
