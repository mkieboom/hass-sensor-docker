# Home Assistant Sensor Container for Raspberry Pi
#
# VERSION 0.1 - not for production, use at own risk
#
FROM arm32v7/ubuntu
#FROM alpine

# Source: https://github.com/andrewjfreyer/monitor
# Doc: https://community.home-assistant.io/t/monitor-reliable-multi-user-distributed-bt-occupancy-presence-detection/

MAINTAINER mkieboom

# Add Mosquitto key and repo
#RUN apt-key adv --fetch-keys http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key \
#wget http://repo.mosquitto.org/debian/mosquitto-stretch.list -P /etc/apt/sources.list.d/ \

RUN apt-get update && apt-get upgrade -y

# Install required packages
RUN apt-get install -y mosquitto \
                       mosquitto-clients \
                       libmosquitto-dev \
                       bluez \
                       bluez-hcidump \
                       bc \
                       git \
                       gnupg \
                       wget \
                       vim

# Clone repo
RUN cd ~ && \
git clone http://github.com/andrewjfreyer/monitor && \
cd ~/monitor/

CMD bash
