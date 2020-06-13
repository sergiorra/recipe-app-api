FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
# apk is the package manager in the docker container
RUN apk add --update --no-cache postgresql-client jpeg-dev
# --virtual is to add alias to the libs added
RUN apk add --update --no-cache --virtual .tmp-build-deps \
    gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev
RUN pip install -r /requirements.txt
# we use the alias to delete the libs added previously
RUN apk del .tmp-build-deps

RUN mkdir /app 
WORKDIR /app
COPY ./app /app

# media files uploaded by users
RUN mkdir -p /vol/web/media
# app static files
RUN mkdir -p /vol/web/static

RUN adduser -D user

# give permissions to the user
RUN chown -R user:user /vol/
RUN chmod -R 755 /vol/web

USER user