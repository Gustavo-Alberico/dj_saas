FROM python:3.12.5-bullseye

ENV PIP_NO_CACHE_DIR off
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV COLUMNS 80

# RUN groupadd -g 1000 appuser && useradd -u 1000 -g appuser -ms /bin/bash appuser

RUN apt-get update \
  && apt-get install -y --force-yes \
  nano python3-pip gettext chrpath libssl-dev libxft-dev \
  libfreetype6 libfreetype6-dev  libfontconfig1 libfontconfig1-dev\
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app/

# USER appuser

COPY requirements.txt /app/

RUN pip install --upgrade pip 

RUN pip install -r requirements.txt

COPY . /app/