FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt  requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 8080
COPY . .

CMD [ "python3","-m","run","-host=0.0.0.0" ]
