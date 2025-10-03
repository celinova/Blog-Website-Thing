FROM python:3.13.4-slim-bullseye

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

WORKDIR /Blog-Website-Thing

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .