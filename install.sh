#!/bin/bash

# supervisor
cat > /etc/supervisor/conf.d/supervisord.conf <<EOF
[supervisord]
nodaemon=true

[program:postfix]
command=/opt/postfix.sh

[program:rsyslog]
command=/usr/sbin/rsyslogd -n -c3
EOF

# virtual

cat >> /etc/postfix/virtual << EOF
F18@bug.out.ba podrska@bring.out.ba
EOF

postmap /etc/postfix/virtual

#  postfix
cat >> /opt/postfix.sh <<EOF
#!/bin/bash
service postfix start
tail -f /var/log/mail.log
EOF

chmod +x /opt/postfix.sh

