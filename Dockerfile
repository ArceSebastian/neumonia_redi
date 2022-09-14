FROM python:latest

RUN apt-get update -y && \
    apt-get install python3-opencv -y 

RUN git clone https://github.com/ArceSebastian/neumonia_redi.git
RUN cd /neumonia_redi
WORKDIR /neumonia_redi

RUN pip install -r requirements.txt
RUN curl "https://www.dropbox.com/s/yx6n606i7cfcvoz/WilhemNet_86.h5?dl=1" -L -o WilhemNet_86.h5

ENTRYPOINT python UI.py
