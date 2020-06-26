#Se agrega la imagen que vamos a usar de python
FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app

RUN adduser -D dd4f
USER dd4f
