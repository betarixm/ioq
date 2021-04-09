FROM python:3.9

LABEL Name="ioq"
LABEL Version="0.1"
LABEL Maintainer="mzg00@postech.ac.kr"

ENV PYTHONUNBUFFERED 1
RUN mkdir /entry
ADD ./entry /entry/
ADD requirements.txt /entry/
RUN pip install -r /entry/requirements.txt
RUN mkdir /static && mkdir /upload && mkdir /code
ADD ./src /code/
WORKDIR /code