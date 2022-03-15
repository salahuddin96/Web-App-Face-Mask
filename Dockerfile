FROM python:3.7
MAINTAINER "Salahuddin Shaikh"
#RUN mkdir /Facemask \
#    cd /Facemask \
RUN git clone https://github.com/salahuddin96/Web-App-Face-Mask.git /opt/Web-App-Face-Mask
WORKDIR /opt/Web-App-Face-Mask
#ADD . /Facemask/
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "/Web-App-Face-Mask/app.py"]
