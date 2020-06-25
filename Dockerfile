#Se agrega la imagen que vamos a usar de python
FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

# Dependencias
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D dd4f
USER dd4f
