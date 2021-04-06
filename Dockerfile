FROM ubuntu:14.04
RUN apt-get update
#RUN apt-get install python-all -y && apt-get install python-all python-pip -y
ADD requirements.txt /tmp/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD ./ /opt/webapp
WORKDIR /opt/webapp
RUN pip install -qr requirements.txt
#ADD ./ /opt/webapp
#WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]