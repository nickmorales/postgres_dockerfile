#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER web_usr;
    CREATE DATABASE empty_fixture;
    GRANT ALL PRIVILEGES ON DATABASE empty_fixture TO web_usr;
EOSQL
