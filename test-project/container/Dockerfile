# Pipenv
# @link https://hub.docker.com/r/kennethreitz/pipenv/dockerfile
# @link https://github.com/pypa/pipenv/blob/master/Dockerfile

FROM heroku/heroku:18-build

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

# Lunchbox Entrypoint
RUN mkdir -p /.lunch
COPY ./test-project/container/entrypoint /.lunch/entrypoint

# -- Install Pipenv:
RUN apt update && apt upgrade -y && apt install python3.7-dev -y
RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python3.7

# Backwards compatility.
RUN rm -fr /usr/bin/python3 && ln /usr/bin/python3.7 /usr/bin/python3
RUN pip3 install pipenv

# -- Install Application into container:
RUN set -ex && mkdir /app
WORKDIR /app

# -- Adding Pipfiles
ONBUILD COPY ./test-project/src/Pipfile Pipfile
#ONBUILD COPY Pipfile.lock Pipfile.lock

# -- Install dependencies:
ONBUILD RUN set -ex && pipenv install --deploy --system

# --------------------
# - Using This File: -
# --------------------
COPY ./test-project/src /app
CMD python3 main.py

