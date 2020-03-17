FROM python:3.6-alpine
RUN apk update
# Install base and dev packages
RUN apk add --no-cache --virtual .build-deps
RUN apk add bash
# Install build packages
RUN apk add make && apk add curl && apk add openssh
# Install git
RUN apk add git
# Install awscli
RUN pip install awscli
