#FROM ubuntu:latest
FROM python:3.8
MAINTAINER "Salahuddin Shaikh"
RUN mkdir /maskdetection \
#    cd /maskdetection \
#RUN git clone https://github.com/salahuddin96/Web-App-Face-Mask.git /opt/Web-App-Face-Mask
WORKDIR /maskdetection
ADD . /maskdetection/
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "/Web-App-Face-Mask/app.py"]
