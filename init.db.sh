#!/bin/bash
set -e

# Esperar a que el servicio de PostgreSQL esté listo
until psql -U "$POSTGRES_USER" -c '\q'; do
  >&2 echo "Postgres está iniciando..."
  sleep 1
done

# Comprobar si la base de datos existe
DB_EXISTS=$(psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '$POSTGRES_DB'" | tr -d '[:space:]')

if [ "$DB_EXISTS" = "1" ]; then
  echo "La base de datos $POSTGRES_DB ya existe."
else
  echo "La base de datos $POSTGRES_DB no existe. Creándola..."
  createdb -U "$POSTGRES_USER" "$POSTGRES_DB"
fi
