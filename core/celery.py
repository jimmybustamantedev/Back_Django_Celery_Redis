import os

# Celery nos permite enviar tareas asíncronas a un worker para que las ejecute en segundo plano.
from celery import Celery

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'core.settings')
app = Celery('core')
app.config_from_object('django.conf:settings', namespace='CELERY')

@app.task
def add_number():
    return

app.autodiscover_tasks()