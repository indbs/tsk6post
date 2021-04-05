FROM ubuntu:14.04
#RUN apt-get install python-all -y && apt-get install python-all python-pip -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN pip install -qr requirements.txt
ADD .* /opt/webapp
CMD app.py