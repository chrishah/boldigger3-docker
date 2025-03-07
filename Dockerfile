FROM ubuntu:24.04

RUN apt update && \
	apt upgrade -y && \
	apt install -y build-essential wget zlib1g zlib1g-dev python3 pip && \
	apt clean

RUN pip install boldigger3 --break-system-packages

#RUN adduser --disabled-password --gecos '' augustus
#RUN usermod -a -G sudo augustus
#RUN playwright install --with-deps
RUN playwright install-deps
RUN boldigger3

RUN apt install -y sudo

USER root
RUN sed -i 's/^%sudo.*/%sudo ALL=(ALL) NOPASSWD:ALL/' /etc/sudoers

#RUN chown root:root /usr/local/bin/boldigger3
#RUN chmod 4775 /usr/local/bin/boldigger3

#USER augustus
#RUN chmod 755 /root
