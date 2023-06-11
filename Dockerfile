FROM python:3.9.17-alpine3.18

WORKDIR /src

COPY requirements.txt /src/requirements.txt

RUN pip install -r requirements.txt

COPY . /src

RUN python manage.py migrate

EXPOSE 5000

CMD python manage.py runserver 0.0.0.0:8000