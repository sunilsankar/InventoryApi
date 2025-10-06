FROM python:3.12-slim

COPY . /app
WORKDIR /app

EXPOSE 5000
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


ENV FLASK_APP=app.py

CMD flask run -h 0.0.0.0 -p 5000
