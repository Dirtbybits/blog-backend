FROM python:3

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
COPY . /app
WORKDIR /app

#

# RUN python3 manage.py collectstatic --noinput
# RUN python3 manage.py migrate


# CMD gunicorn auth.wsgi:application --bind 0.0.0.0:$PORT

#