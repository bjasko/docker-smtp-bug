From ubuntu:trusty
MAINTAINER hernad@bring.out.ba

# thank you: bjasko@bring.out.ba

ENV DEBIAN_FRONTEND noninteractive

RUN sed -e 's/archive./ba.archive./' /etc/apt/sources.list -i
RUN apt-get update -y
RUN apt-get -y install supervisor postfix sasl2-bin mailutils msmtp dnsutils telnet

ADD install.sh /install.sh
ADD start.sh /start.sh

RUN chmod +x /install.sh
RUN chmod +x /start.sh

RUN /install.sh

CMD /start.sh;/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
