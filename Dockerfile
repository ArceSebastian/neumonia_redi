FROM python:latest

RUN apt-get update -y && \
    apt-get install python3-opencv -y 

RUN git clone 
RUN cd /neumonia_redi
WORKDIR /neumonia_redi

COPY . ./
RUN pip install -r requirements.txt
