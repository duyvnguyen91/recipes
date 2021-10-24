FROM python:3.7-alpine

WORKDIR /app
COPY . /app

ENV SECRET_KEY='<a random character string>'
ENV FLASK_CONFIG=development
ENV DATABASE_URL='postgresql://postgres:postgres@172.17.0.2:5432/recipe_db'

RUN apk update && apk add --no-cache gcc libc-dev make git libffi-dev openssl-dev python3-dev libxml2-dev libxslt-dev musl-dev postgresql-dev postgresql-libs
 
RUN pip3 --no-cache-dir install -r requirements.txt
    # pip3 install -U pip3 setuptools wheel && \
    # pip3 install msoffcrypto-tool psycopg2 && \
    
# CMD [ "python", "manage.py", "runserver" ]