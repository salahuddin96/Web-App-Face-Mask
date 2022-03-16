#FROM ubuntu:latest
FROM python:3.8
MAINTAINER "Salahuddin Shaikh"
#RUN mkdir /maskdetection \
#    cd /maskdetection \
#RUN git clone https://github.com/salahuddin96/Web-App-Face-Mask.git /opt/Web-App-Face-Mask
RUN apt-get update \
    apt install -y libgl1-mesa-glx
ADD . /maskdetection/
WORKDIR /maskdetection
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
