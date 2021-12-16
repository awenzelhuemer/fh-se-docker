
#!/usr/bin/env bash
set -e

function execSql {
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" --command="$1"
}

execSql "CREATE ROLE ${SPRING_DATASOURCE_USERNAME} WITH LOGIN PASSWORD '${SPRING_DATASOURCE_PASSWORD}' VALID UNTIL 'infinity';"
execSql "CREATE DATABASE app WITH ENCODING='UTF8' OWNER=${SPRING_DATASOURCE_USERNAME} CONNECTION LIMIT=-1;"