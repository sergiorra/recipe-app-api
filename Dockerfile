FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
# apk is the package manager in the docker container
RUN apk add --update --no-cache postgresql-client
# --virtual is to add alias to the libs added
RUN apk add --update --no-cache --virtual .tmp-build-deps \
    gcc libc-dev linux-headers postgresql-dev
RUN pip install -r /requirements.txt
# we use the alias to delete the libs added previously
RUN apk del .tmp-build-deps

RUN mkdir /app 
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user