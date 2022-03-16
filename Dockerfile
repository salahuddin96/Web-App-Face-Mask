FROM ubuntu:latest
#FROM ubuntu-minimal
FROM python:3.8
MAINTAINER "Salahuddin Shaikh"
#RUN mkdir /maskdetection \
#    cd /maskdetection \
#RUN git clone https://github.com/salahuddin96/Web-App-Face-Mask.git /opt/Web-App-Face-Mask
RUN sudo apt install python3-pip
    sudo apt-get update \
    sudo apt-get uprade -y \
    sudo apt install -y libgl1-mesa-glx
ADD . /maskdetection/
WORKDIR /maskdetection
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
