FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y python3-pip
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
CMD python3 app.py