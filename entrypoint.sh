#!/bin/sh
echo "Aplicando migraciones..."
python manage.py migrate

echo "Iniciando servidor Celery..."
exec celery -A core worker --loglevel=info

echo "Iniciando servidor Django..."
exec "$@"
