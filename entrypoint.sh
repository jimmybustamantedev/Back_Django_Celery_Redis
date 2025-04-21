#!/bin/sh
echo "Aplicando migraciones..."
python manage.py migrate

echo "Iniciando servidor Django..."
exec "$@"
