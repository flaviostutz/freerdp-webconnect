FROM python

EXPOSE 80 443

WORKDIR /tmp
RUN apt-get update && apt-get install sudo cmake libboost-all-dev FreeRDP -y
RUN git clone https://github.com/FreeRDP/FreeRDP-WebConnect.git

WORKDIR /tmp/FreeRDP-WebConnect
RUN setup-all.sh -f
