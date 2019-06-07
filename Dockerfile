# Pull the base image
FROM python:3

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /codex
WORKDIR /codex
#Upgrade pip
RUN pip install pip -U
ADD requirements.txt /codex/
#Install dependencies
RUN pip install -r requirements.txt
ADD . /codex/