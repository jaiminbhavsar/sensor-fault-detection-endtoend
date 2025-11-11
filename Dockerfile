FROM python:3.10-slim-bullseye

RUN apt-get update -y && apt-get install -y --no-install-recommends awscli

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]

# FROM python:3.8.5-slim-buster
# RUN apt update -y && apt install awscli -y
# WORKDIR /app

# COPY . /app
# RUN pip install -r requirements.txt

# CMD ["python3", "main.py"]
# Dockerfile
