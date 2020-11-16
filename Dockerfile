FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update

RUN apt -y upgrade && apt install -y wget curl locales build-essential vim git python3.8 python3-venv lsof python3-setuptools python3-pip
RUN git clone https://github.com/facebookresearch/ParlAI.git

WORKDIR ParlAI
RUN pip3 install chardet certifi idna six flake8 sphinx fvcore==0.1.1.post20200716 
RUN pip3 install -U pip
RUN python3 setup.py develop
COPY run.sh .

# Expose the client port
EXPOSE 8080
CMD ["sh","./run.sh"]
