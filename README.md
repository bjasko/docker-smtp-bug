# docker-smtp


## build

     docker build -t smtp

## run

    msmtp_client=yes smtp_ip=192.168.168.22 dns_ip=192.168.45.7 ./run_smtp.sh


Sav saobracaj ide preko mailrelay hosta:

    is_relayhost="yes" mailrelay="[smtp.bih.net.ba]:587" smtp_user=bring.out smtp_password=bring.out.password msmtp_client=yes mynetworks="192.168.45.0/24 192.168.168.0/24 172.17.0.0/16" smtp_ip=192.168.168.22 dns_ip=192.168.45.7 ./run_smtp.sh


