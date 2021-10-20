FROM python:slim

RUN apt-get update && apt-get install -y \
  python3-dev \
  gcc \
  libc-dev \
  libffi-dev

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt