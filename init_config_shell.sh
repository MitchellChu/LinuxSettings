#!/bin/sh
# ===============================================
# DESCRIPTION:: Linux security configuration.
#       This script test in CentOS 7.
#       Please make some changes if you want use
#       to other system.
# Author:: Mitchell Chu
# Blog:: http://blog.useasp.net/
# Date:: 2017-01-30
# ===============================================


USER_SSH=mitchell
USER_PASSWD="%#98_2djA$kjs$-1(;s{"
USER_SSH_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAzu8xKH9U69rCWt/sruf/xoTTw2g1kTwUWPbuLTuyDKoTcKJAM9k/gbeIqURRY3WYqkwfIOovbGs1x6ZXwm0wH3p62qzBLYj6VJkQ/vMsBFcXGG/dGCihsr97t1PuuNHllQWL2XhT9JPVHGXV7pCGipYL8kUlYz5ZA8sduROFxiAb2bs4Cx0spIz9x6KZb1yGeW6uhHZ1fCTl8J3A0S6P3E+7eO0dqmeE7nleDP9XfIh+gjDEDKZI1auXNSQtL499/G39xDRVQhNLxVimy2uYAYytYeOUd3Xsn1BpMX3VAAkfLOFOz86dtCpSnfIJXb4L5he1KIWfUvBCTt6dcKUt+w== config_sample_key@useasp.net"
# !!!DON'T SET PRIVATE KEY HERE ALWAYS!!!
# private key need remove from here.
USER_SSH_KEY_PRIVATE="PuTTY-User-Key-File-2: ssh-rsa
Encryption: none
Comment: config_sample_key@useasp.net
Public-Lines: 6
AAAAB3NzaC1yc2EAAAABJQAAAQEAzu8xKH9U69rCWt/sruf/xoTTw2g1kTwUWPbu
LTuyDKoTcKJAM9k/gbeIqURRY3WYqkwfIOovbGs1x6ZXwm0wH3p62qzBLYj6VJkQ
/vMsBFcXGG/dGCihsr97t1PuuNHllQWL2XhT9JPVHGXV7pCGipYL8kUlYz5ZA8sd
uROFxiAb2bs4Cx0spIz9x6KZb1yGeW6uhHZ1fCTl8J3A0S6P3E+7eO0dqmeE7nle
DP9XfIh+gjDEDKZI1auXNSQtL499/G39xDRVQhNLxVimy2uYAYytYeOUd3Xsn1Bp
MX3VAAkfLOFOz86dtCpSnfIJXb4L5he1KIWfUvBCTt6dcKUt+w==
Private-Lines: 14
AAABAQCiMRixCdrGsmD7HjYMjFLZ3bq7wGFWKCufrMiEUWIJ7RYn2R2QbAFX1Qo/
erxU36Erh8Ve/L1i0JHvgmB1yzOOSz2yUA0IA5PFxBQ9cnxyGr8TJz6WZQkdZaYn
59bINc+eUHSH2toE4pJGsK6YY3BeyKGUX7WFIwd/g4X/wzF/mzWc3eg9E8M5blGo
zNWX4HwP5+SsRMx3MPA3dtry6Zy+9rQz9Y+UdFfO0E43ZsGx6y0u+4+F8fRRzrqt
6aXbY90jWCRBKtxnXJ/+lgwwxppklwkngRI12eyroC9yVmarB7K7T3pPHWbbeo4c
Klh9MHUAB6D1og7NpdtElDEmWGmdAAAAgQD+UKvK8Y8MKgxWjml6VWTmw0rR63RB
E4j3MgpW2jIwDPz5U9iZcWw8Q8Y/s1A75cddTyVdFWs/g02ySPecDGuhrEYzI7Dl
oDBpMhXxG2OMdS27HIrsuZk3bX9cjQrY+FCZKG8EuQHYwxm/1CruQfXbyIdu24q2
lzz+Nvggs4jL+QAAAIEA0E4pRMuhDOqboCQQeIRUzHW1YJEUW606LwUNbRlWuyJM
9ramP8sFvic/axvTuoed540rjIog0ZqLGg5JFc1ve4z99KWlBvqzVDzJ4+1i7knT
Ngod6Miahzxc82rYnFml38YEDySebdkKR2gMqjVv4XXNKX2Ea+pJlkTRI4wv/pMA
AACAc9swBRwIEfU+bGNRGpKZLQK5cmbOLFA94oNlCIjxja3mBCGhE0Pt2UdBz0mo
LZ1Af/sjGIyrkh6L0eYS7GXiBWYlx2shY/iV6+zPb3Bx7m3jUmBKNsV9KkSC7j0W
o2fLk6WrT8eOORIuXPzo1Vd6/mRi/b/6/IbUhtz3Q6Szxxk=
Private-MAC: 9e38f8a8b4d6bf83f161d4a80257486ee8bcc178
"
# Set default user insteractive echo.
INTERACTIVE_ECHO=n
# SSH CONFIGURATION SECTION
SSH_PORT=2222
# yes or no
SSH_PUBLICKEY_ENABLED=yes
SSH_PASSWORD_ENABLED=yes
# only SSH_PUBLICKEY_ENABLED and SSH_PASSWORD_ENABLED
# set yes the SSH_BOTH_PUBLICKEY_PASSWORD_AUTH can use yes|no.
# otherwise just no.
SSH_BOTH_PUBLICKEY_PASSWORD_AUTH=no
SSH_ROOT_ENABLED=no
SSH_EMPTYPASSWD_ENABLED=no
SSH_USE_DNS=no
SSH_ALLOWED_USERS=()
SSH_MAX_AUTH_TRIES=6
SSHD_CONFIG=/etc/ssh/sshd_config
# SSH_FIREWALL_USE_SERVICE
# copy service file to firewalld and edit file port if yes
# add port to firewall if no.
SSH_FIREWALL_USE_SERVICE=yes

# add services or ports to firewall.
# service/port use once.
# It's not nessary to set twice.
# e.g.: http use 80 tcp/ip port.
# so, we can only add 'http' to service is ok.
# or just add 80 to ports.
FIREWALL_OPEN_SERVICES=(http ssh https)
# format: 80/tcp, 22/tcp, 53/udp, 44-48/udp, 49-60/tcp
# default is tcp protocol if no give.
FIREWALL_OPEN_PORTS=()
FIREWALL_DEFAULT_ZONE=`firewall-cmd --get-default-zone`

# =======================================
#  Please DON'T edit the following code.
# =======================================
# Step 1: Change root password.
echo "resetting root password."
TEMP_ROOT_PASSWORD=
if read -t 10 -p "ENTER ROOT PASSWORD:" TEMP_ROOT_PASSWORD
then
    if [ "$TEMP_ROOT_PASSWORD"x != ""x ]
    then
        echo "$TEMP_ROOT_PASSWORD" | passwd --stdin root
        echo "root password is reseted."
    fi
fi
echo ""

# Step 2: upgrade system.
# And config auto update.
yum -y upgrade

yum -y install cronie, yum-cron
AUTO_CONFIG_FILE=/etc/yum/yum-cron.conf
if [ -f "$AUTO_CONFIG_FILE" ]
then
    sed -i "s/#\?update_messages *=.*/update_messages = yes/" $AUTO_CONFIG_FILE
    sed -i "s/#\?download_updates *=.*/download_updates = yes/" $AUTO_CONFIG_FILE
    sed -i "s/#\?apply_updates *=.*/apply_updates = yes/" $AUTO_CONFIG_FILE
fi

systemctl start crond
systemctl start yum-cron

# Step 3: Create new account.
# create new remote login user.
TEMP_USER_SSH=
if read -t 10 -p "Please enter remote user name:" TEMP_USER_SSH
then
    if [ "$TEMP_USER_SSH"x != ""x ]
    then
        USER_SSH=$TEMP_USER_SSH
    fi
fi
echo ""
if [ "$TEMP_USER_SSH" = "$USER_SSH" ]
then
    echo "Use new user: $USER_SSH"
else
    echo "Timeout, use default user name: $USER_SSH"
fi
echo "Creating user..."
useradd -c 'Remote user' $USER_SSH
echo "Please give the password for new user: $USER_SSH"
TEMP_USER_PASSWD=
if read -t 10 -p "New password:" TEMP_USER_PASSWD
then
    if [ "$TEMP_USER_PASSWD"x != ""x ]
    then
        USER_PASSWD=$TEMP_USER_PASSWD
    fi
fi

if [ "TEMP_USER_PASSWD"x = "$USER_PASSWD"x ]
then
    echo "Use new password: $USER_PASSWD"
else
    echo "Use default password..."
fi
echo "Changing password..."
echo "$USER_PASSWD" | passwd --stdin $USER_SSH
# create .ssh
mkdir -p /home/$USER_SSH/.ssh
chmod 700 /home/$USER_SSH/.ssh
TEMP_USER_SSH_KEY=
if read -t 15 -p "Please enter your personal ssh key (start with: ssh-rsa ...):" TEMP_USER_SSH_KEY
then
    if [ "$TEMP_USER_SSH_KEY"x != ""x ]
    then
        USER_SSH_KEY=$TEMP_USER_SSH_KEY
        echo "Use new personal key."
    fi
else
    echo "Use default personal key.(not recommand)"
fi
echo "USER_SSH_KEY::$USER_SSH_KEY"
echo "$USER_SSH_KEY" > /home/$USER_SSH/.ssh/authorized_keys
chmod 400 /home/$USER_SSH/.ssh/authorized_keys
chown -R $USER_SSH:$USER_SSH /home/$USER_SSH/.ssh

# Step 4: Add use to wheel group
usermod -aG wheel $USER_SSH
SSH_ALLOWED_USERS=(${SSH_ALLOWED_USERS[*]} $USER_SSH)
echo "New user's config was done."

# Step 5: optimize sshd_config
# Change default ssh port
# SSH_PORT
sed -i "s/^#\?Port .*$/Port $SSH_PORT/" $SSHD_CONFIG
echo "SSH::PROT::$SSH_PORT"
# SSH_PUBLICKEY_ENABLED
if [ "$SSH_PUBLICKEY_ENABLED" = "yes" ]
then
    sed -i "s/^#\?RSAAuthentication .*$/RSAAuthentication yes/" $SSHD_CONFIG
    sed -i "s/^#\?PubkeyAuthentication .*$/PubkeyAuthentication yes/" $SSHD_CONFIG
    sed -i "s/^#\?AuthorizedKeysFile .*$/AuthorizedKeysFile \.ssh\/authorized_keys/" $SSHD_CONFIG
    echo "SSH::PUBLICKEY::ENABLED."
fi
# SSH_PASSWORD_ENABLED
if [ "$SSH_PASSWORD_ENABLED" = "yes" ]
then
    sed -i "s/^#\?PasswordAuthentication .*$/PasswordAuthentication yes/" $SSHD_CONFIG
    echo "SSH::PASSWORD::ENABLED."
fi
# SSH_BOTH_PUBLICKEY_PASSWORD_AUTH
if [ "$SSH_BOTH_PUBLICKEY_PASSWORD_AUTH" = "yes" ]
then
    # check first.
    if grep -Fq "AuthenticationMethods " $SSHD_CONFIG
    then
        sed -i "s/^#\?AuthenticationMethods .*$/AuthenticationMethods publickey,password/" $SSHD_CONFIG
    else
        # sed -99i "AuthenticationMethods publickey,password" $SSHD_CONFIG
        echo "AuthenticationMethods publickey,password" >> $SSHD_CONFIG
    fi
    
    echo "SSH::PUBLICKEY_AND_PASSWORD::ENABLED."
fi

# SSH_ROOT_ENABLED
sed -i "s/^#\?PermitRootLogin .*$/PermitRootLogin $SSH_ROOT_ENABLED/" $SSHD_CONFIG
echo "SSH::ROOT::$SSH_ROOT_ENABLED"

# SSH_EMPTYPASSWD_ENABLED
sed -i "s/^#\?PermitEmptyPasswords .*$/PermitEmptyPasswords $SSH_EMPTYPASSWD_ENABLED/" $SSHD_CONFIG
echo "SSH::EMPATYPASSWD::$SSH_EMPTYPASSWD_ENABLED"

# SSH_USE_DNS
sed -i "s/^#\?UseDNS .*$/UseDNS $SSH_USE_DNS/" $SSHD_CONFIG
echo "SSH::USEDNS::$SSH_USE_DNS"

# SSH_ALLOWED_USERS
ALLOWED_USERS="AllowUsers"
for user in ${SSH_ALLOWED_USERS[@]}
do
    ALLOWED_USERS=$ALLOWED_USERS" $user"
done
if [ "$ALLOWED_USERS" != "AllowUsers" ]
then
    if grep -Eq "^#?AllowUsers" $SSHD_CONFIG
    then
        sed -i "s/^#\?AllowUsers .*$/$ALLOWED_USERS/" $SSHD_CONFIG
    else
        echo "$ALLOWED_USERS" >> $SSHD_CONFIG
    fi
fi
echo "SSH::ALLOWED_USERS::$ALLOWED_USERS"

# SSH_MAX_AUTH_TRIES
sed -i "s/^#\?MaxAuthTries .*$/MaxAuthTries $SSH_MAX_AUTH_TRIES/" $SSHD_CONFIG
echo "SSH::MaxAuthTries::$SSH_MAX_AUTH_TRIES"

# restart sshd service
# suitable CentOS 7
# need modify for other *nux system.
echo "RESTARTING SSHD."
systemctl restart sshd.service

# Step 6: config firewall.
echo "ADDING SERVICES AND PORTS TO FIREWALL."
# copy sshd relative configuration to service directory.

if [ "$SSH_FIREWALL_USE_SERVICE" = "yes" ]
then
    cp /usr/lib/firewalld/services/ssh.xml /etc/firewalld/services/
    sed -i "s/port\s*=\s*\"22\"/port=\"$SSH_PORT\"/" /etc/firewalld/services/ssh.xml
else
    FIREWALL_OPEN_PORTS+=($SSH_PORT/tcp)
fi

oldIFS=$IFS
IFS=' '
TEMP_FIREWALL_SERVICES_STRING=$(firewall-cmd --list-all | grep services)
read -r -a FIREWALL_EXISTS_SERVICES <<< "$TEMP_FIREWALL_SERVICES_STRING"
FIREWALL_NEED_ADD_SERVICES=()
for service in ${FIREWALL_OPEN_SERVICES[*]}
do
    skip=
    for s_exist in ${FIREWALL_EXISTS_SERVICES[@]:1}
    do
        [[ $service == $s_exist ]] && { skip=1; break; }
    done
    [[ -n $skip ]] || FIREWALL_NEED_ADD_SERVICES+=("$service")
done

for service in ${FIREWALL_NEED_ADD_SERVICES[*]}
do
    firewall-cmd --zone=$FIREWALL_DEFAULT_ZONE --add-service=$service --permanent
done

TEMP_FIREWALL_PORTS_STRING=$(firewall-cmd --list-all | grep ports)
read -r -a FIREWALL_EXISTS_PORTS <<< "$TEMP_FIREWALL_PORTS_STRING"
FIREWALL_NEED_ADD_PORTS=()
for port in ${FIREWALL_OPEN_PORTS[*]}
do
    skip=
    for p_exist in ${FIREWALL_EXISTS_PORTS[@]:1}
    do
        if [[ "$port" = */tcp ]] || [[ "$port" = */udp ]]
        then
            [[ $port == $p_exist ]] && { skip=1; break; }
        else
            port+=/tcp
            [[ $port == $p_exist ]] && { skip=1; break; }
        fi
    done
    [[ -n $skip ]] || FIREWALL_NEED_ADD_PORTS+=("$port")
done

for port in ${FIREWALL_NEED_ADD_PORTS[*]}
do
    firewall-cmd --zone=$FIREWALL_DEFAULT_ZONE --add-port=$port --permanent
done

IFS=$oldIFS
# retart firewall service.
systemctl restart firewalld.service


# lock special user
passwd -l xfs
passwd -l news
passwd -l nscd
passwd -l dbus
passwd -l vcsa
passwd -l games
passwd -l nobody
passwd -l avahi
passwd -l haldaemon
passwd -l gopher
passwd -l ftp
passwd -l mailnull
passwd -l pcap
passwd -l mail
passwd -l shutdown
passwd -l halt
passwd -l uucp
passwd -l operator
passwd -l sync
passwd -l adm
passwd -l lp

# chattr /etc/passwd /etc/shadow
chattr +i /etc/passwd
chattr +i /etc/shadow
chattr +i /etc/group
chattr +i /etc/gshadow

# add continue input failure 3 ,passwd unlock time 5 minite
sed -i 's#auth required pam_env.so#auth required pam_env.sonauth required pam_tally.so onerr=fail deny=3 unlock_time=300nauth required /lib/security/$ISA/pam_tally.so onerr=fail deny=3 unlock_time=300#' /etc/pam.d/system-auth
# system timeout 5 minite auto logout
echo "TMOUT=300" >>/etc/profile

# will system save history command list to 10
sed -i "s/HISTSIZE=1000/HISTSIZE=10/" /etc/profile

# enable /etc/profile go!
source /etc/profile

# add syncookie enable /etc/sysctl.conf
echo "net.ipv4.tcp_syncookies=1" >> /etc/sysctl.conf

sysctl -p # exec sysctl.conf enable

# limit chmod important commands
chmod 700 /bin/ping
chmod 700 /usr/bin/finger
chmod 700 /usr/bin/who
chmod 700 /usr/bin/w
chmod 700 /usr/bin/locate
chmod 700 /usr/bin/whereis
chmod 700 /sbin/ifconfig
chmod 700 /usr/bin/pico
chmod 700 /bin/vi
chmod 700 /usr/bin/which
chmod 700 /usr/bin/gcc
chmod 700 /usr/bin/make
chmod 700 /bin/rpm

# history security
chattr +a /root/.bash_history
chattr +i /root/.bash_history

# write important command md5
cat > list << "EOF" &&
/bin/ping
/bin/finger
/usr/bin/who
/usr/bin/w
/usr/bin/locate
/usr/bin/whereis
/sbin/ifconfig
/bin/pico
/bin/vi
/usr/bin/vim
/usr/bin/which
/usr/bin/gcc
/usr/bin/make
/bin/rpm
EOF
for i in `cat list`
do
    if [ ! -x $i ]
    then
        echo "$i not found,no md5sum!"
    else
        md5sum $i >> /var/log/`hostname`.log
    fi
done
rm -f list
