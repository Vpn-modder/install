#!/bin/bash
# Auto Script for Centos 6.xx
# Made by: DC TEAM DEVELOPER 
# version v.1.0
ln -fs /usr/share/zoneinfo/Asia/Manila /etc/localtime
#change this according to your database details
#Note: Password w/ Special Characters are not allowed.
dbhost='156.67.222.123';
dbuser='u217294747_oi';
dbpass='26352oitesT';
dbname='u217294747_iotest';
dbport='3306';


##certificates
cacert='-----BEGIN CERTIFICATE-----
MIIE5TCCA82gAwIBAgIJAP0GLynOqm38MA0GCSqGSIb3DQEBCwUAMIGnMQswCQYD
VQQGEwJQSDERMA8GA1UECBMIQmF0YW5nYXMxETAPBgNVBAcTCEJhdGFuZ2FzMRIw
EAYDVQQKEwlTYXZhZ2VWUE4xEjAQBgNVBAsTCVNhdmFnZVZQTjEWMBQGA1UEAxMN
c2F2YWdlLXZwbi50azEPMA0GA1UEKRMGc2VydmVyMSEwHwYJKoZIhvcNAQkBFhJz
YXZhZ2U5OUBnbWFpbC5jb20wHhcNMTgwNDIwMDQ1MTMyWhcNMjgwNDE3MDQ1MTMy
WjCBpzELMAkGA1UEBhMCUEgxETAPBgNVBAgTCEJhdGFuZ2FzMREwDwYDVQQHEwhC
YXRhbmdhczESMBAGA1UEChMJU2F2YWdlVlBOMRIwEAYDVQQLEwlTYXZhZ2VWUE4x
FjAUBgNVBAMTDXNhdmFnZS12cG4udGsxDzANBgNVBCkTBnNlcnZlcjEhMB8GCSqG
SIb3DQEJARYSc2F2YWdlOTlAZ21haWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOC
AQ8AMIIBCgKCAQEAwMNjUVNKJvcMBAx5k/doMtYwVhoSV2gnxA16rtZMnkckHRQc
ApvgSWOBc0e2OgL+rlb48BrheyQ9aSLiHrfGPvzpVQfpGCwSQxayEiNKdRmlb6wl
IIlnhfXyKYXx9x/fZNQWGmhczckrXl84ZYbLKglmnfXSEM0PUlfj7pujjXSsZTPV
2Pe92+sf/2ZyYotA2XXqnXIPjaPUo/kQYqmLTSY7weaYLisxn9TTJo6V0Qap2poY
FLpH7fjWCTun7jZ5CiWVIVARkZRXmurLlu+Z+TMlPK3DW9ASXA2gw8rctsoyLJym
V+6hkZiJ3k0X17SNIDibDG4vn8VFEFehOrqKXQIDAQABo4IBEDCCAQwwHQYDVR0O
BBYEFDC3ZJF7tPbQ9SUDMm6P0hxXmvNIMIHcBgNVHSMEgdQwgdGAFDC3ZJF7tPbQ
9SUDMm6P0hxXmvNIoYGtpIGqMIGnMQswCQYDVQQGEwJQSDERMA8GA1UECBMIQmF0
YW5nYXMxETAPBgNVBAcTCEJhdGFuZ2FzMRIwEAYDVQQKEwlTYXZhZ2VWUE4xEjAQ
BgNVBAsTCVNhdmFnZVZQTjEWMBQGA1UEAxMNc2F2YWdlLXZwbi50azEPMA0GA1UE
KRMGc2VydmVyMSEwHwYJKoZIhvcNAQkBFhJzYXZhZ2U5OUBnbWFpbC5jb22CCQD9
Bi8pzqpt/DAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBCwUAA4IBAQCdv9MOSR8O
b9wRw4qd681eTxUYEACFVZpY3eK3vJYyGtblYHIwfCPTWL6yXQxbMud4C1ISIwel
UFv/qnz/GZmAkN0qB5tNSvB48123F1AWfhhXWG+o+xWxUi+eqsXdUVZ1tpP5WQaH
EUtU6SZ1AXO6l6b/RTXymRrEInCPfbGsEnucnG7naOpBaNRXmpiMppOwzR42sd6I
QOvXkj2e8v9tQ05cffjexks+rfb/d80+1nfkv0HCLWxcdU8yOUqVryhdZLB6Rhw/
crldSHwrGWN+qptpFD160iJLIv3p5vWwUAgRoRai9iHuJMOHn4aDX0N8tbCfS+R5
qn8GWiHaXEu8
-----END CERTIFICATE-----';
servercert='Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: 1 (0x1)
    Signature Algorithm: sha256WithRSAEncryption
        Issuer: C=PH, ST=Batangas, L=Batangas, O=SavageVPN, OU=SavageVPN, CN=savage-vpn.tk/name=server/emailAddress=savage99@gmail.com
        Validity
            Not Before: Apr 20 04:53:44 2018 GMT
            Not After : Apr 17 04:53:44 2028 GMT
        Subject: C=PH, ST=Batangas, L=Batangas, O=SavageVPN, OU=SavageVPN, CN=savage-vpn.tk/name=server/emailAddress=savage99@gmail.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:b6:a9:b9:e6:f9:19:85:24:ba:6b:dc:7e:b2:d4:
                    2c:01:46:26:fa:3e:41:ee:0c:b9:18:27:99:34:27:
                    61:eb:4f:cb:83:c0:0b:43:27:05:53:a5:b9:3c:5a:
                    8a:c5:7e:2e:72:1d:f9:83:97:44:b5:00:21:36:d7:
                    51:27:be:b7:d0:0c:2c:09:38:52:a0:e0:89:6f:cb:
                    0e:11:37:d9:7c:43:fe:b1:25:c1:2f:78:25:c1:a0:
                    15:c9:1d:35:b6:1d:33:e9:e6:75:83:4b:30:54:a4:
                    4e:f5:01:ae:fc:0c:37:c0:c7:07:43:4c:04:50:80:
                    c8:13:9a:27:4c:d1:6d:c6:87:e4:38:38:67:c1:87:
                    e4:3a:e3:79:11:c1:23:d4:2c:72:b7:0c:60:72:c7:
                    29:7e:36:17:09:2d:ca:9d:b3:49:2f:2f:56:85:a9:
                    24:34:5a:e7:eb:4b:ee:cf:43:bb:20:ef:dc:26:95:
                    e6:dd:3a:8a:61:d8:33:b0:28:0f:fb:ce:d9:db:dd:
                    ca:2f:85:f0:ec:66:58:67:77:8e:e0:a0:21:f8:b5:
                    fe:e3:02:7e:3c:9c:5c:91:65:1a:bc:3c:6f:ce:3d:
                    b8:38:8e:b0:d4:5b:ef:a5:e1:b3:0c:f4:bf:49:95:
                    7b:1f:9f:41:9f:ce:fa:ae:e1:e7:68:f4:f9:a6:99:
                    74:95
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Basic Constraints: 
                CA:FALSE
            Netscape Cert Type: 
                SSL Server
            Netscape Comment: 
                Easy-RSA Generated Server Certificate
            X509v3 Subject Key Identifier: 
                0C:4B:B3:78:75:C7:5E:C8:16:D2:A7:BC:8E:15:3F:33:E3:58:19:04
            X509v3 Authority Key Identifier: 
                keyid:30:B7:64:91:7B:B4:F6:D0:F5:25:03:32:6E:8F:D2:1C:57:9A:F3:48
                DirName:/C=PH/ST=Batangas/L=Batangas/O=SavageVPN/OU=SavageVPN/CN=savage-vpn.tk/name=server/emailAddress=savage99@gmail.com
                serial:FD:06:2F:29:CE:AA:6D:FC

            X509v3 Extended Key Usage: 
                TLS Web Server Authentication
            X509v3 Key Usage: 
                Digital Signature, Key Encipherment
            X509v3 Subject Alternative Name: 
                DNS:server
    Signature Algorithm: sha256WithRSAEncryption
         95:13:80:8a:95:42:9e:16:b6:58:5f:4a:d2:74:61:fb:25:04:
         3c:77:fa:09:41:05:e3:9b:df:93:4e:65:8e:b8:05:87:35:c0:
         9a:eb:62:fa:16:0d:15:28:79:b7:7f:8c:55:72:7a:31:16:3f:
         ff:ba:29:70:0c:96:78:6e:1e:a9:ff:42:d7:f2:53:43:e6:f3:
         a4:3a:02:7b:85:18:18:bc:b6:56:47:3b:be:ae:6f:1c:93:8b:
         13:55:0d:b1:51:30:c2:f4:03:c9:a9:cf:bb:ad:60:70:ec:32:
         1e:e5:74:d5:4d:2b:5e:02:73:28:b0:84:28:f4:6c:93:45:a1:
         f8:3c:58:91:38:21:7b:b2:8f:fe:26:4c:18:72:a3:13:79:46:
         b8:43:8c:cc:5c:03:7c:20:8a:51:25:8b:d0:80:a8:ae:33:5c:
         19:20:f6:a9:02:39:47:42:1d:37:c6:ec:9f:6e:80:5b:61:0b:
         53:bf:26:4b:6d:b5:a6:98:21:e0:ad:42:3a:7d:3f:c9:00:a3:
         61:4c:76:e0:45:36:0b:7e:71:38:37:4f:73:a9:6f:bf:7a:77:
         04:8d:27:cb:e3:d4:11:f4:c3:c5:85:c2:1d:8a:9f:3b:da:43:
         97:8d:f3:3e:30:51:b4:ad:2b:65:04:58:f3:95:7f:23:b2:3a:
         f8:bd:7c:f8
-----BEGIN CERTIFICATE-----
MIIFWDCCBECgAwIBAgIBATANBgkqhkiG9w0BAQsFADCBpzELMAkGA1UEBhMCUEgx
ETAPBgNVBAgTCEJhdGFuZ2FzMREwDwYDVQQHEwhCYXRhbmdhczESMBAGA1UEChMJ
U2F2YWdlVlBOMRIwEAYDVQQLEwlTYXZhZ2VWUE4xFjAUBgNVBAMTDXNhdmFnZS12
cG4udGsxDzANBgNVBCkTBnNlcnZlcjEhMB8GCSqGSIb3DQEJARYSc2F2YWdlOTlA
Z21haWwuY29tMB4XDTE4MDQyMDA0NTM0NFoXDTI4MDQxNzA0NTM0NFowgacxCzAJ
BgNVBAYTAlBIMREwDwYDVQQIEwhCYXRhbmdhczERMA8GA1UEBxMIQmF0YW5nYXMx
EjAQBgNVBAoTCVNhdmFnZVZQTjESMBAGA1UECxMJU2F2YWdlVlBOMRYwFAYDVQQD
Ew1zYXZhZ2UtdnBuLnRrMQ8wDQYDVQQpEwZzZXJ2ZXIxITAfBgkqhkiG9w0BCQEW
EnNhdmFnZTk5QGdtYWlsLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
ggEBALapueb5GYUkumvcfrLULAFGJvo+Qe4MuRgnmTQnYetPy4PAC0MnBVOluTxa
isV+LnId+YOXRLUAITbXUSe+t9AMLAk4UqDgiW/LDhE32XxD/rElwS94JcGgFckd
NbYdM+nmdYNLMFSkTvUBrvwMN8DHB0NMBFCAyBOaJ0zRbcaH5Dg4Z8GH5DrjeRHB
I9QscrcMYHLHKX42Fwktyp2zSS8vVoWpJDRa5+tL7s9DuyDv3CaV5t06imHYM7Ao
D/vO2dvdyi+F8OxmWGd3juCgIfi1/uMCfjycXJFlGrw8b849uDiOsNRb76Xhswz0
v0mVex+fQZ/O+q7h52j0+aaZdJUCAwEAAaOCAYswggGHMAkGA1UdEwQCMAAwEQYJ
YIZIAYb4QgEBBAQDAgZAMDQGCWCGSAGG+EIBDQQnFiVFYXN5LVJTQSBHZW5lcmF0
ZWQgU2VydmVyIENlcnRpZmljYXRlMB0GA1UdDgQWBBQMS7N4dcdeyBbSp7yOFT8z
41gZBDCB3AYDVR0jBIHUMIHRgBQwt2SRe7T20PUlAzJuj9IcV5rzSKGBraSBqjCB
pzELMAkGA1UEBhMCUEgxETAPBgNVBAgTCEJhdGFuZ2FzMREwDwYDVQQHEwhCYXRh
bmdhczESMBAGA1UEChMJU2F2YWdlVlBOMRIwEAYDVQQLEwlTYXZhZ2VWUE4xFjAU
BgNVBAMTDXNhdmFnZS12cG4udGsxDzANBgNVBCkTBnNlcnZlcjEhMB8GCSqGSIb3
DQEJARYSc2F2YWdlOTlAZ21haWwuY29tggkA/QYvKc6qbfwwEwYDVR0lBAwwCgYI
KwYBBQUHAwEwCwYDVR0PBAQDAgWgMBEGA1UdEQQKMAiCBnNlcnZlcjANBgkqhkiG
9w0BAQsFAAOCAQEAlROAipVCnha2WF9K0nRh+yUEPHf6CUEF45vfk05ljrgFhzXA
muti+hYNFSh5t3+MVXJ6MRY//7opcAyWeG4eqf9C1/JTQ+bzpDoCe4UYGLy2Vkc7
vq5vHJOLE1UNsVEwwvQDyanPu61gcOwyHuV01U0rXgJzKLCEKPRsk0Wh+DxYkTgh
e7KP/iZMGHKjE3lGuEOMzFwDfCCKUSWL0ICorjNcGSD2qQI5R0IdN8bsn26AW2EL
U78mS221ppgh4K1COn0/yQCjYUx24EU2C35xODdPc6lvv3p3BI0ny+PUEfTDxYXC
HYqfO9pDl43zPjBRtK0rZQRY85V/I7I6+L18+A==
-----END CERTIFICATE-----';
serverkey='-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC2qbnm+RmFJLpr
3H6y1CwBRib6PkHuDLkYJ5k0J2HrT8uDwAtDJwVTpbk8WorFfi5yHfmDl0S1ACE2
11EnvrfQDCwJOFKg4Ilvyw4RN9l8Q/6xJcEveCXBoBXJHTW2HTPp5nWDSzBUpE71
Aa78DDfAxwdDTARQgMgTmidM0W3Gh+Q4OGfBh+Q643kRwSPULHK3DGByxyl+NhcJ
Lcqds0kvL1aFqSQ0WufrS+7PQ7sg79wmlebdOoph2DOwKA/7ztnb3covhfDsZlhn
d47goCH4tf7jAn48nFyRZRq8PG/OPbg4jrDUW++l4bMM9L9JlXsfn0Gfzvqu4edo
9PmmmXSVAgMBAAECggEAOwhHKDpA4SKpjMpJuAmR3yeI2T7dl81M1F2XyZ8gqiez
ofSiryUhN5NLdhHc306UPBUr2jc84TIVid+0PqAIT5hfcutc6NkoEZUSCsZ95wci
fKWy9WBi81yFLeXewehWKrVsLO5TxEcFrXDJ2HMqYYbw9fLPQiUchBlBsjXMwGgG
W8R2WlQaIh0siJzg+FjwOPEbZA7jAJfyGt80HDWVOfsHxsSX80m8rq2nMppXsngF
hhosj/f/WOPJLiA+/Odkv1ZXS1rqnr5GuwdzrEnibqXOx9LCuxp9MZ8t6qWDvgUf
dy1AB2DKRi9s4NCJHPpITXek4ELawLmGxp7KEzQ/0QKBgQDoU16ZGTCVCT/kQlRz
DRZ2fFXNEvEohCTxYJ72iT6MGxZw+2fuZG6VL9fAgUVLleKKUCFUzM3GPQWEQ1ry
VKQjIqQZjyR+rzdqbHOcG4qYz93enH0FIB9cW/FiU3m5EAzU+TkagZCFq254Kb7i
IQzrWTn24jFX1fQkgcNoXbNUMwKBgQDJRtEs/4e/enVs/6iGjjTGltjyXPS3QM/k
ylZGL+Wc1gQWAsfTO6tYMMPVupyyl2JQjhUydIu3g7D2R4IRKlpprEd8S0MoJou9
Lp/JudlDDJs9Q6Z2q99JpbXdhJ2aOTmSgOKHnkFQRRP/LOxaNwuE/xuhYWubvtFW
y9u+B8uMFwKBgQCJuZqTweYWA+S3aUbs6W5OkUjACKGj9ip8WV4DIrtMjWZRVgh3
v1v63uDVAw1UUKd6fSQ1RDAce+JAVTmd/OVM2uVTLZNh8nc0hNRIT99q1Zdet4A5
wKA2vV6sfnXjaotg2dmrR/Gn/EfBvmWlYhhpkHyXSeIcgv53geGYhiugFwKBgQC3
pRmtyOh+2KjTbuDBBHc6yt/fItlVaplE0yismX8S/mJ0As13+fV4XeYQ2Feoy180
yK6mfpgMNOf9jXkrWE1uJXaD/dekhqbxUd0RHbUR7CqoV1VG6cKtW7j4CMwTryrM
dTQ7MTW+m4iHRuHP3nFwQ6NeN5kLXat7Wj2AwXQCuQKBgESdvXETE6Oy3GVeO1zd
tDlYxpA620daYaNo9MDpV49m89Lt8Maou080+gEJDrqqhyiaEQStrvz31mXIA+w7
YTX1gKAF4qCXy3IKLqN3umdpEYkV2MVEfXlUE6aZZMogta9F5cne3CNDyHzq/RvS
l9rNm+ntgV3+QioNbRWhG9fb
-----END PRIVATE KEY-----';
dh='-----BEGIN DH PARAMETERS-----
MIIBCAKCAQEAohzwXz9fsjw+G9Q14qINNOhZnTt/b30zzJYm4o2NIzAngM6E6GPm
N5USUt0grZw6h3VP9LyqQoGi/bHFz33YFG5lgDF8FAASEh07/leF7s0ohhK8pspC
JVD+mRatwBrIImXUpJvYI2pXKxtCOnDa2FFjAOHKixiAXqVcmJRwNaSklQcrpXdn
/09cr0rbFoovn+f1agly4FxYYs7P0XkvSHm3gVW/mhAUr1hvZlbBaWFSVUdgcVOi
FXQ/AVkvxYaO8pFI2Vh+CNMk7Vvi8d3DTayvoL2HTgFi+OIEbiiE/Nzryu+jDGc7
79FkBHWOa/7eD2nFrHScUJcwWiSevPQjQwIBAg==
-----END DH PARAMETERS-----';
RED='\033[01;31m';
RESET='\033[0m';
GREEN='\033[01;32m';
WHITE='\033[01;37m';
YELLOW='\033[00;33m';

echo -e "$GREEN                Please Wait... $RESET"
sleep 3s
echo -e "$GREEN                Installing Updates $RESET"
yum update -y
clear
echo -e "$GREEN                Updates Done  $RESET"
sleep 3s
echo -e "$GREEN                Lets install the required packages. $RESET"
sleep 3s
clear
echo -e "$GREEN                Please Wait... $RESET"
yum update -y &> /dev/null
yum install -y telnet telnet-server vixie-cron crontabs httpd nano squid mysql-server &> /dev/null
yum install -y php php-pdo php-mysqli php-mysql php-mbstring.x86_64 epel-release &> /dev/null
yum install -y openvpn curl sudo &> /dev/null
MYIP=$(curl -4 icanhazip.com); &> /dev/null
echo -e "$GREEN                Installation Complete $RESET"
echo -e "$GREEN                Lets configure the settings and routing $RESET"
sleep 4s
clear
echo -e "$GREEN                Please wait while we are fighting with your firewall $RESET"
sleep 4s

#ethernet
ethernet=""

echo "**********************************************************************************"
echo -e " Note: Your Network Interface is followed by the word \e[1;31m' dev '\e[0m"
echo " If the interface doesnt match openvpn will be connected but no internet access."
echo " Please choose or type properly"
echo "**********************************************************************************"
echo ""
echo "Your Network Interface is:"
ip route | grep default
echo ""
echo "Ethernet:"
read ethernet
echo ""
echo ""
clear;

## making script and keys
mkdir /etc/openvpn/script
mkdir /etc/openvpn/log
mkdir /etc/openvpn/keys
mkdir /var/www/html/status
touch /var/www/html/status/tcp2.txt
cat << EOF > /etc/openvpn/keys/ca.crt
$cacert
EOF

cat << EOF > /etc/openvpn/keys/server.crt
$servercert
EOF

cat << EOF > /etc/openvpn/keys/server.key
$serverkey
EOF

cat << EOF > /etc/openvpn/keys/dh2048.pem
$dh
EOF

cat << EOF > /etc/openvpn/script/config.sh
#!/bin/bash
##Dababase Server
HOST='$dbhost'
USER='$dbuser'
PASS='$dbpass'
DB='$dbname'
PORT='$dbport'
EOF



echo -e "                $GREEN Type of your Server$RESET"
PS3='Choose or Type a Plan: '
options=("Premium" "VIP" "PRIVATE" "Quit")
select opt in "${options[@]}"; do
  case "$opt,$REPLY" in
    Premium,*|*,Premium) 
    echo "";
    
  
/bin/cat <<"EOM" >/etc/openvpn/script/login.sh
#!/bin/bash
. /etc/openvpn/script/config.sh

  
##PREMIUM##
PRE="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.duration > 0"
  
##VIP##
VIP="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.vip_duration > 0"
  
##PRIVATE##
PRIV="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.private_duration > 0"
  
Query="SELECT users.user_name FROM users WHERE $PRE OR $VIP OR $PRIV"
user_name=`mysql -u $USER -p$PASS -D $DB -h $HOST --skip-column-name -e "$Query"`
  
[ "$user_name" != '' ] && [ "$user_name" = "$username" ] && echo "user : $username" && echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1
  
EOM
  
echo "";
echo -e "                $GREEN 1) Premium Selected$RESET";
break ;;
VIP,*|*,VIP) 
echo "";
  
/bin/cat <<"EOM" >/etc/openvpn/script/login.sh
#!/bin/bash
. /etc/openvpn/script/config.sh

##VIP##
VIP="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.vip_duration > 0"
  
##PRIVATE##
PRIV="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.private_duration > 0"
  
Query="SELECT users.user_name FROM users WHERE $VIP OR $PRIV"
user_name=`mysql -u $USER -p$PASS -D $DB -h $HOST --skip-column-name -e "$Query"`
  
[ "$user_name" != '' ] && [ "$user_name" = "$username" ] && echo "user : $username" && echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1
EOM
  
echo "";
echo -e "                $GREEN 2) VIP Selected$RESET";
break ;;
PRIVATE,*|*,PRIVATE) 
echo "";

  
/bin/cat <<"EOM" >/etc/openvpn/script/login.sh
#!/bin/bash
. /etc/openvpn/script/config.sh

  
##PRIVATE##
PRIVATE="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.private_duration>0"
  
Query="SELECT users.user_name FROM users WHERE $PRIVATE"
user_name=`mysql -u $USER -p$PASS -D $DB -h $HOST --skip-column-name -e "$Query"`
  
[ "$user_name" != '' ] && [ "$user_name" = "$username" ] && echo "user : $username" && echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1
EOM
  
echo "";
echo -e "                $GREEN 3) PRIVATE Selected$RESET";
break ;;
Quit,*|*,Quit) echo -e " $RED   Installation Cancelled!$RESET";
echo -e "                $RED   Rebuild your vps and correct the process.$RESET";
exit;
break ;; *)
echo -e "                $RED   Invalid: Just choose what you want$RESET";
esac
done
clear

cat << EOF > /etc/openvpn/server.conf
local $MYIP
mode server 
tls-server 
port 443
proto tcp
dev tun
tun-mtu-extra 32 
tun-mtu 1400 
mssfix 1360
server 10.8.0.0 255.255.255.0
ca /etc/openvpn/keys/ca.crt
cert /etc/openvpn/keys/server.crt
key /etc/openvpn/keys/server.key
dh /etc/openvpn/keys/dh2048.pem
persist-key
persist-tun
keepalive 1 180
comp-lzo
user nobody
client-to-client
username-as-common-name
client-cert-not-required
auth-user-pass-verify /etc/openvpn/script/login.sh via-env
push "redirect-gateway def1"
push "dhcp-option DNS 1.1.1.1"
push "dhcp-option DNS 1.0.0.1"
script-security 3
status /var/www/html/status/tcp2.txt 1
#log-append /etc/openvpn/log/openvpn.log
verb 3
connect-retry-max infinite
EOF

cat << EOF > /etc/openvpn/server2.conf
local $MYIP
mode server 
tls-server 
port 110
proto tcp
dev tun
tun-mtu-extra 32 
tun-mtu 1400 
mssfix 1360
server 10.9.0.0 255.255.255.0
ca /etc/openvpn/keys/ca.crt
cert /etc/openvpn/keys/server.crt
key /etc/openvpn/keys/server.key
dh /etc/openvpn/keys/dh2048.pem
persist-key
persist-tun
keepalive 1 180
comp-lzo
user nobody
client-to-client
username-as-common-name
client-cert-not-required
auth-user-pass-verify /etc/openvpn/script/login.sh via-env
push "redirect-gateway def1"
push "dhcp-option DNS 1.1.1.1"
push "dhcp-option DNS 1.0.0.1"
script-security 3
#log-append /etc/openvpn/log/openvpn.log
verb 3
connect-retry-max infinite
EOF

cat << EOF > /etc/openvpn/server3.conf
local $MYIP
mode server 
tls-server 
port 5245
proto udp
dev tun
tun-mtu-extra 32 
tun-mtu 1400 
mssfix 1360
server 10.7.0.0 255.255.255.0
ca /etc/openvpn/keys/ca.crt
cert /etc/openvpn/keys/server.crt
key /etc/openvpn/keys/server.key
dh /etc/openvpn/keys/dh2048.pem
persist-key
persist-tun
keepalive 1 180
comp-lzo
user nobody
client-to-client
username-as-common-name
client-cert-not-required
auth-user-pass-verify /etc/openvpn/script/login.sh via-env
push "redirect-gateway def1"
push "dhcp-option DNS 1.1.1.1"
push "dhcp-option DNS 1.0.0.1"
script-security 3
#log-append /etc/openvpn/log/openvpn.log
verb 3
connect-retry-max infinite
EOF

#denying ads
cat << EOF > /etc/squid/ads.txt
101com.com
101order.com
123found.com
180hits.de
180searchassistant.com
207.net
247media.com
24log.com
zjjlf.croukwexdbyerr.net
zkic.com
zous.szm.sk
zt.tim-taxi.com
zyrdu.cruisingsmallship.com
EOF
echo '' > /etc/sysctl.conf &> /dev/null
echo "# Kernel sysctl configuration file for Red Hat Linux
#
# For binary values, 0 is disabled, 1 is enabled.  See sysctl(8) and
# sysctl.conf(5) for more details.
#
# Use '/sbin/sysctl -a' to list all possible parameters.
# Controls IP packet forwarding
net.ipv4.conf.default.rp_filter = 1
net.ipv4.conf.default.accept_source_route = 0
kernel.sysrq = 0
kernel.core_uses_pid = 1
net.ipv4.tcp_syncookies = 1
kernel.msgmnb = 65536
kernel.msgmax = 65536
kernel.shmmax = 68719476736
kernel.shmall = 4294967296
net.ipv4.ip_forward = 1
fs.file-max = 65535
net.core.rmem_default = 262144
net.core.rmem_max = 262144
net.core.wmem_default = 262144
net.core.wmem_max = 262144
net.ipv4.tcp_rmem = 4096 87380 8388608
net.ipv4.tcp_wmem = 4096 65536 8388608
net.ipv4.tcp_mem = 4096 4096 4096
net.ipv4.tcp_low_latency = 1
net.core.netdev_max_backlog = 4000
net.ipv4.ip_local_port_range = 1024 65000
net.ipv4.tcp_max_syn_backlog = 16384"| sudo tee /etc/sysctl.conf &> /dev/null
sysctl -p &> /dev/null
iptables -F; iptables -X; iptables -Z
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o $ethernet -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -j SNAT --to $MYIP
iptables -t nat -A POSTROUTING -s 10.9.0.0/24 -o $ethernet -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.9.0.0/24 -j SNAT --to $MYIP
iptables -t nat -A POSTROUTING -s 10.7.0.0/24 -o $ethernet -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.7.0.0/24 -j SNAT --to $MYIP
iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -s 10.8.0.0/24 -j ACCEPT
iptables -A FORWARD -s 10.9.0.0/24 -j ACCEPT
iptables -A FORWARD -s 10.7.0.0/24 -j ACCEPT
iptables -A FORWARD -j REJECT
iptables -A INPUT -p tcp --dport 25 -j DROP
iptables -A INPUT -p udp --dport 25 -j DROP

#install PHP
yum install gcc php-devel php-pear libssh2 libssh2-devel make -y
pecl install -f ssh2 -y
 echo extension=ssh2.so > /etc/php.d/ssh2.ini
service httpd restart
 php -m | grep ssh2 
sed -i "s/#ServerName www.example.com:80/ServerName localhost:80/g" /etc/httpd/conf/httpd.conf
clear


service iptables save &> /dev/null

## changing permissions
chmod -R 755 /etc/openvpn
restorecon -r /var/www/html
cd /var/www/html/status
chmod 775 *
cd
echo '' > /etc/squid/squid.conf &> /dev/null
echo "acl Denied_ports port 1025-65535
http_access deny Denied_ports
acl to_vpn dst $MYIP
http_access allow to_vpn
acl inbound src all
acl outbound dst $MYIP/32
http_access allow inbound outbound
http_access deny all
http_port 8080 transparent
http_port 8989 transparent
http_port 8000 transparent
http_port 53 transparent
http_port 9201 transparent
visible_hostname TEAM DC DEVELOPER
cache_mgr codeph"| sudo tee /etc/squid/squid.conf &> /dev/null
clear
echo -e "$GREEN                    We are almost done $RESET"
sleep 4s
clear
echo "0 0 1 * * root /sbin/reboot" > /etc/cron.d/reboot
echo "";
echo "2) Every 12mn Next Month Your VPS will reboot";
echo 'Restarting and Re-enabling after Boot'
#Install StunnelDropbear
yum -y install stunnel dropbear
mkdir /var/run/stunnel
chown nobody:nobody /var/run/stunnel
cat <<EOF >/etc/stunnel/stunnel.pem
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAuyrnC0X1e5LsyPVtB0nOj/RPUXJ1jbv+8PcSrAdyvmwq/H3p
eIKEmZ756XMMPKZuS5+FaYV7Qw6lntj0mYwdwO2dzV84XZrFPC/rioSjka9rLsIH
wFK6Zb4rmRbmfEjcoZ22aejbbXlVzScUMRAN3NpvLPcsRH8OPzLR7j5P0CnnBQnS
EKRlwvEqNEqa6qir8DbMnfPh7Lo0V6g15R70ae/VR0MPA5+5Ce0slNt8SQdFmaD5
NL8n+bvkVtJfawfcugdZ5J45rcAc/zBdrtmvmnbVoPLnazDQVkd2u2zfBQtEwZmX
3juAL4Iqb9mh3YIAVqeXVR+pmbcDtHJiKBJxuwIDAQABAoIBAQC3+A6LTSNiaGMn
j9yv2kMXyfqgwtF7E/sdnK0UvGlzdFy4O4bddeSiHtnkNbokby5gVJbMxnAG1IHE
ZdnehxPDy4tdDygXEYamhy+Mwp0IGJVQq1T1HBus38R4wEKijPeYP63J4iC0NRw5
/xxgsTf/ChFW8Ejptr0pL2mbNFI89xRs6Ibgd4MTwLpLi/Pt5dG29iBVXWBBFYkN
wWVDObgR1HevWCOdyQhYIpkfbiMrf5/Kq81pIVT6XR4iYsatLdk2ZGmXoKhskFeh
blMc5DEEQcncQEGlq/mBcDi3o/i7CvXjM/qMuW/mhK16InDYJ3PuMykFmu493d6N
lMmbDdjxAoGBAODa9cDRdXa6jzdwPSWiBpRrxLFXHXLmFHzqzCxZKf5TO5cqUceX
0+AzRS2RG6q4B4yum3wuDyXNNCZCc/TlGIntJCuNwP9rDxZ/pvs6TewXmj4rns4w
59tVhAv4rM+aCxpwZWEFExgqK1sEZKy7EGaqc3jDnA5dzKr5ZTKMDScTAoGBANUX
l04dPzSdQ+x6SsvsfpjAkArVeTLeO0P68qt1D+eQq9XZYiXR//Bog5y4D7g4k2w9
j68CO8wYc+LJUG9ZEa+cVE3TdJPFvA+KSWtQC+rGCGXSUncxFRwyrNwA4fU3dSzZ
GmAm/6tUmbDDpYZzCJF7wUFDZzlTJckf4plFB5e5AoGAEjRoFTZgJj6wfbKOoM9f
bQDUqe79qWHLYtm3shd9+ONQPcrlWB2Iv+wmu6u167p+kftJB2LLQyo8AKT8smUh
+XjDpusRJxzJ2e533Hs599VpXYM2lkcLXoyr5jQ5+YzlPTzAWHyKsTgoznOqmvmC
OG2wb6SWq+sYOPd8I/2GyxUCgYBIh94dXYEdBIaRIFMDND0m+yxMM7ssIE5l5i3h
RFgkhq6mfHaWzvLhvoFFv7TCDKfJSO72L7lwz8XqJIG3VMbbUkezsczVW5GWbIhu
+XEE+WD0X3FoVpGL5ofF3psKn1TH7iG3Jq8RfxtM+lsF93OsKUZvU2T4MyACZFL5
vnBGKQKBgQDZtaNicrnrlu9iP5Eaj0Py2+2MUiP6miB2tARU9yAVQbp3zptjysZG
90eT3stwpNoFz8pidC+TsLvc6+Co941piRoT8zH8ezqxcHvjy2ITTrGOq4tJBPr6
euRNREMSAo3j/2P2kOWK2uHbqkEI2x8epWs/gqAFbuM5Gkk3XfM74g==
-----END RSA PRIVATE KEY-----
-----BEGIN CERTIFICATE-----
MIID8TCCAtmgAwIBAgIJAJtwwttWENtAMA0GCSqGSIb3DQEBCwUAMIGOMQswCQYD
VQQGEwJQaDERMA8GA1UECAwIQmF0YW5nYXMxETAPBgNVBAcMCEJhdGFuZ2FzMQ8w
DQYDVQQKDAZDb2RlUGgxFDASBgNVBAsMC0NvZGVQaCBUZWFtMREwDwYDVQQDDAhK
aG9lIFhpaTEfMB0GCSqGSIb3DQEJARYQY29kZXBoQGdtYWlsLmNvbTAeFw0yMDAz
MTkwOTU3MThaFw0yMzAzMTkwOTU3MThaMIGOMQswCQYDVQQGEwJQaDERMA8GA1UE
CAwIQmF0YW5nYXMxETAPBgNVBAcMCEJhdGFuZ2FzMQ8wDQYDVQQKDAZDb2RlUGgx
FDASBgNVBAsMC0NvZGVQaCBUZWFtMREwDwYDVQQDDAhKaG9lIFhpaTEfMB0GCSqG
SIb3DQEJARYQY29kZXBoQGdtYWlsLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
ADCCAQoCggEBALsq5wtF9XuS7Mj1bQdJzo/0T1FydY27/vD3EqwHcr5sKvx96XiC
hJme+elzDDymbkufhWmFe0MOpZ7Y9JmMHcDtnc1fOF2axTwv64qEo5Gvay7CB8BS
umW+K5kW5nxI3KGdtmno2215Vc0nFDEQDdzabyz3LER/Dj8y0e4+T9Ap5wUJ0hCk
ZcLxKjRKmuqoq/A2zJ3z4ey6NFeoNeUe9Gnv1UdDDwOfuQntLJTbfEkHRZmg+TS/
J/m75FbSX2sH3LoHWeSeOa3AHP8wXa7Zr5p21aDy52sw0FZHdrts3wULRMGZl947
gC+CKm/Zod2CAFanl1UfqZm3A7RyYigScbsCAwEAAaNQME4wHQYDVR0OBBYEFHWI
km1tRz5tBz9nZYRK0cR/qm8dMB8GA1UdIwQYMBaAFHWIkm1tRz5tBz9nZYRK0cR/
qm8dMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQELBQADggEBAIgxWkM0Y/HF5Cjy
JoLyGkuXwvMKQeBgZ8Pp8eD/5dcRmAETxRwDUROy138IHFXaF8a+UB0cOAzBIiGw
NQt50aU2gx+gasQGuEFqyF8SeBOEKqkjCLMve9heum8fHix2KcD8FDWqXfeuaiFW
uIF6F/1g5+4ZGRWvDD2d3ivh0kRfvCMkWXYp969yBAgVDApuF9PaMPcJiCcWz5a5
hQE5NF7hMpYUagqnr5bryqpcps4j9KkQ+RdM9ZwW9WIDKg3gEBgbKUEAvVjv1bY2
lQ15l8h2WoFxzpP7BTzIic1gLhxh6/YsM2RU6WUPmhUPzUP3xUpx7f+LEdFpuoAs
PYeNUPo=
-----END CERTIFICATE-----
EOF

/bin/cat <<"EOM" >/etc/rc.d/init.d/stunnel
#!/bin/bash
#
# Init Script to run stunnel in daemon mode at boot time.
#
# Author: Dexter Eskalarte - RPM S.r.l.
# Revision 1.0 - 2010 November, 11

#====================================================================
# Run level information:
#
# chkconfig: 2345 99 99
# description: Secure Tunnel
# processname: stunnel
#
# Run "/sbin/chkconfig --add stunnel" to add the Run levels.
# This will setup the symlinks and set the process to run at boot.
#====================================================================

#====================================================================
# Paths and variables and system checks.

# Source function library
. /etc/rc.d/init.d/functions

# Check that networking is up.
#
[ ${NETWORKING} ="yes" ] || exit 0

# Path to the executable.
#
SEXE=/usr/bin/stunnel

# Path to the configuration file.
#
CONF=/etc/stunnel/stunnel.conf

# Check the configuration file exists.
#
if [ ! -f $CONF ] ; then
echo "The configuration file cannot be found!"
exit 0
fi

# Path to the lock file.
#
LOCK_FILE=/var/lock/subsys/stunnel

#====================================================================

# Run controls:

prog=$"stunnel"

RETVAL=0

# Start stunnel as daemon.
#
start() {
if [ -f $LOCK_FILE ]; then
echo "stunnel is already running!"
exit 0
else
echo -n $"Starting $prog: "
$SEXE $CONF
fi

RETVAL=$?
[ $RETVAL -eq 0 ] && success
echo
[ $RETVAL -eq 0 ] && touch $LOCK_FILE
return $RETVAL
}

# Stop stunnel.
#
stop() {
if [ ! -f $LOCK_FILE ]; then
echo "stunnel is not running!"
exit 0

else

echo -n $"Shutting down $prog: "
killproc stunnel
RETVAL=$?
[ $RETVAL -eq 0 ]
rm -f $LOCK_FILE
echo
return $RETVAL

fi
}

# See how we were called.
case "$1" in
start)
start
;;
stop)
stop
;;
restart)
stop
start
;;
condrestart)
if [ -f $LOCK_FILE ]; then
stop
start
RETVAL=$?
fi
;;
status)
status stunnel
RETVAL=$?
;;
*)
echo $"Usage: $0 {start|stop|restart|condrestart|status}"
RETVAL=1
esac

exit $RETVAL

#--- End of file ---

EOM

cat <<EOF >/etc/stunnel/stunnel.conf
cert = /etc/stunnel/stunnel.pem
client = no
socket = a:SO_REUSEADDR=1
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1
[dropbear]
connect = 127.0.0.1:442
accept = 444
connect = $MYIP:443
accept = 4433
[squid]
connect = 127.0.0.1:99
accept = 8008
EOF

echo '' > /etc/init.d/dropbear
/bin/cat <<"EOM" >/etc/init.d/dropbear
#!/bin/bash
#
# Init file for dropbear SSH server daemon
#
# chkconfig: - 55 25
# description: dropbear SSH server daemon
#
# processname: dropbear
# config: /etc/dropbear/dropbear_dss_host_key
# config: /etc/dropbear/dropbear_rsa_host_key
# pidfile: /var/run/dropbear.pid

# source function library
. /etc/rc.d/init.d/functions

# pull in sysconfig settings
[ -f /etc/sysconfig/dropbear ] && . /etc/sysconfig/dropbear

RETVAL=0
prog="dropbear"
OPTIONS="-p 442"
# Some functions to make the below more readable
KEYGEN=/usr/bin/dropbearkey
DROPBEAR=/usr/sbin/dropbear
RSA_KEY=/etc/dropbear/dropbear_rsa_host_key
DSS_KEY=/etc/dropbear/dropbear_dss_host_key
PID_FILE=/var/run/dropbear.pid

runlevel=$(set -- $(runlevel); eval "echo \$$#" )

do_rsa_keygen() {
	if [ ! -s $RSA_KEY ]; then
		echo -n $"Generating dropbear RSA host key: "
		if $KEYGEN -t rsa -f $RSA_KEY >&/dev/null; then
			chmod 600 $RSA_KEY
			success $"RSA key generation"
			echo
		else
			failure $"RSA key generation"
			echo
			exit 1
		fi
	fi
}

do_dss_keygen() {
	if [ ! -s $DSS_KEY ]; then
		echo -n $"Generating dropbear DSS host key: "
		if $KEYGEN -t dss -f $DSS_KEY >&/dev/null; then
			chmod 600 $DSS_KEY
			success $"DSS key generation"
			echo
		else
			failure $"DSS key generation"
			echo
			exit 1
		fi
	fi
}

start()
{
	# Create keys if necessary
	if [ "x${AUTOCREATE_SERVER_KEYS}" != xNO ]; then
		do_rsa_keygen
		do_dss_keygen
	fi

	echo -n $"Starting $prog: "
	$DROPBEAR $OPTIONS && success || failure
	RETVAL=$?
	[ "$RETVAL" = 0 ] && touch /var/lock/subsys/dropbear
	echo
}

stop()
{
	echo -n $"Stopping $prog: "
	if [ -n "`pidfileofproc $DROPBEAR`" ] ; then
	    killproc $DROPBEAR
	else
	    failure $"Stopping $prog"
	fi
	RETVAL=$?
	# if we are in halt or reboot runlevel kill all running sessions
	# so the TCP connections are closed cleanly
	if [ "x$runlevel" = x0 -o "x$runlevel" = x6 ] ; then
	    killall $prog 2>/dev/null
	fi
	[ "$RETVAL" = 0 ] && rm -f /var/lock/subsys/dropbear
	echo
}

case "$1" in
	start)
		start
		;;
	stop)
		stop
		;;
	restart)
		stop
		start
		;;
	reload)
		stop
		start
		;;
	condrestart)
		if [ -f /var/lock/subsys/dropbear ] ; then
			stop
			# avoid race
			sleep 3
			start
		fi
		;;
	status)
		status $DROPBEAR
		RETVAL=$?
		;;
	*)
		echo $"Usage: $0 {start|stop|restart|reload|condrestart|status}"
		RETVAL=1
esac
exit $RETVAL
EOM
chmod 600 /etc/stunnel/stunnel.pem
chmod +x /etc/rc.d/init.d/stunnel
echo -e "                $GREEN Type of your SSH$RESET"
PS3='Choose or Type a Plan: '
options=("Premium" "VIP" "PRIVATE" "Quit")
select opt in "${options[@]}"; do
  case "$opt,$REPLY" in
    Premium,*|*,Premium) 
    echo "";
    
crontab -r
mkdir /usr/sbin/kpn
wget -O /usr/sbin/kpn/connection.php "https://raw.githubusercontent.com/Vpn-modder/install/main/Script/premiumconnection.sh"
echo "*/3 * * * * /usr/bin/php /usr/sbin/kpn/connection.php >/dev/null 2>&1
*/3 * * * * /bin/bash /usr/sbin/kpn/active.sh >/dev/null 2>&1
*/3 * * * * /bin/bash /usr/sbin/kpn/inactive.sh >/dev/null 2>&1" | tee -a /var/spool/cron/root
sed -i "s|DBHOST|$dbhost|g" /usr/sbin/kpn/connection.php
sed -i "s|DBUSER|$dbuser|g" /usr/sbin/kpn/connection.php
sed -i "s|DBPASS|$dbpass|g" /usr/sbin/kpn/connection.php
sed -i "s|DBNAME|$dbname|g" /usr/sbin/kpn/connection.php
  
echo "";
echo -e "                $GREEN 1) Premium Selected$RESET";
break ;;
VIP,*|*,VIP) 
echo "";
  
crontab -r
mkdir /usr/sbin/kpn
wget -O /usr/sbin/kpn/connection.php "https://raw.githubusercontent.com/Vpn-modder/install/main/Script/vipconnection.sh"
echo "*/3 * * * * /usr/bin/php /usr/sbin/kpn/connection.php >/dev/null 2>&1
*/3 * * * * /bin/bash /usr/sbin/kpn/active.sh >/dev/null 2>&1
*/3 * * * * /bin/bash /usr/sbin/kpn/inactive.sh >/dev/null 2>&1" | tee -a /var/spool/cron/root
sed -i "s|DBHOST|$dbhost|g" /usr/sbin/kpn/connection.php
sed -i "s|DBUSER|$dbuser|g" /usr/sbin/kpn/connection.php
sed -i "s|DBPASS|$dbpass|g" /usr/sbin/kpn/connection.php
sed -i "s|DBNAME|$dbname|g" /usr/sbin/kpn/connection.php
  
echo "";
echo -e "                $GREEN 2) VIP Selected$RESET";
break ;;
PRIVATE,*|*,PRIVATE) 
echo "";

  
crontab -r
mkdir /usr/sbin/kpn
wget -O /usr/sbin/kpn/connection.php "https://raw.githubusercontent.com/Vpn-modder/install/main/Script/vipconnection.sh"
echo "*/3 * * * * /usr/bin/php /usr/sbin/kpn/connection.php >/dev/null 2>&1
*/3 * * * * /bin/bash /usr/sbin/kpn/active.sh >/dev/null 2>&1
*/3 * * * * /bin/bash /usr/sbin/kpn/inactive.sh >/dev/null 2>&1" | tee -a /var/spool/cron/root
sed -i "s|DBHOST|$dbhost|g" /usr/sbin/kpn/connection.php
sed -i "s|DBUSER|$dbuser|g" /usr/sbin/kpn/connection.php
sed -i "s|DBPASS|$dbpass|g" /usr/sbin/kpn/connection.php
sed -i "s|DBNAME|$dbname|g" /usr/sbin/kpn/connection.php
  
echo "";
echo -e "                $GREEN 3) PRIVATE Selected$RESET";
break ;;
Quit,*|*,Quit) echo -e " $RED   Installation Cancelled!$RESET";
echo -e "                $RED   Rebuild your vps and correct the process.$RESET";
exit;
break ;; *)
echo -e "                $RED   Invalid: Just choose what you want$RESET";
esac
done
clear

service iptables save &> /dev/null
/sbin/chkconfig crond on
chkconfig iptables on
chkconfig openvpn on
chkconfig squid on
/sbin/service crond start
service crond restart
service stunnel start
service dropbear start
service stunnel restart
service dropbear restart
chkconfig httpd on &> /dev/null
/etc/init.d/squid start &> /dev/null
/etc/init.d/openvpn start &> /dev/null
/etc/init.d/httpd start &> /dev/null
service httpd restart &> /dev/null
service squid restart 
service openvpn restart
rm openvpn.sh
clear
echo ''
echo ''
echo ''
sleep 3s
echo ''
echo -e "$GREEN     OpenVPN Installed Sucessfully$RESET"
sleep 3s
echo -e "$GREEN
============================   
    SUCCESS!!!
============================   $RESET"
echo ''
echo -e "$YELLOW
============================
| OpenVPN PORT       :  443 |
| OpenVPN SNL PORT   :  110 |
| OpenVPN UDP PORT   : 5245 |
============================
|Squid PORT          : 8080 |
|                    : 8989 |
|                    : 8000 |
============================
|SSH PORT             : 442 |
|SSL PORT             : 444 |
============================$RESET"
echo -e "$GREEN 

 Powered by: DC TEAM DEVELOPER"
 echo "";
