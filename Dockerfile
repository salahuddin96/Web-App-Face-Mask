FROM ubuntu:latest
MAINTAINER "Salahuddin Shaikh"
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install tzdata -y
RUN apt-get install libapache2-mod-wsgi-py3 -y
RUN apt-get install python3.8 -y
RUN apt install python-is-python3
#RUn apt install python3-pip -y
RUN mkdir /maskdetection
COPY . /maskdetection/
WORKDIR /maskdetection
RUN apt-get install python3-venv -y
RUN python -m venv env -y
RUN source  env/bin/activate
RUN export FLASK_APP=app.py
RUN pip install -r requirements.txt
EXPOSE 4555,5000
CMD ["python3", "./app.py"]
