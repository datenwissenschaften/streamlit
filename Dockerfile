FROM ubuntu:22.04

LABEL maintainer="martin.franke@datenwissenschaften.com"
LABEL version="1.0"
LABEL description="Streamlit Runner"
LABEL name="datenwissenschaften/streamlit"


ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /opt
EXPOSE 8501

RUN apt-get -qq clean
RUN apt-get -qq autoremove -y
RUN apt-get -qq update
RUN apt-get -qq upgrade -y
RUN apt-get -qq install -y curl python3 python3-pip python3-dev build-essential libssl-dev libffi-dev git

COPY requirements/requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt

COPY config/config.toml /opt/.streamlit/config.toml

COPY scripts/bootstrap.sh ./bootstrap.sh
RUN chmod +x ./bootstrap.sh

CMD './bootstrap.sh'
