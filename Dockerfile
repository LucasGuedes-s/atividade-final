FROM python:3.11-slim

# Evita arquivos .pyc
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Instala o Jupyter
RUN pip install --no-cache-dir notebook

# Porta do Jupyter
EXPOSE 8888

# Comando para iniciar o Jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
