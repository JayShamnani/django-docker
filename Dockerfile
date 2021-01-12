FROM python:3.9-alpine
RUN mkdir /app
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
LABEL maintainer="Jay Shamnani <shamnani.jay@gmail.com>"\
    version="1.0"
CMD python3 manage.py runserver 0.0.0.0:8000