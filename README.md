# just4lex_infra
just4lex Infra repository


bastion_IP = 51.250.0.131

someinternalhost_IP = 10.128.0.31

## Самостоятельное задание
`$ ssh -i ~/.ssh/appuser -J appuser@51.250.0.131 appuser@10.128.0.31`
## Дополнительное задание
```
$ cat ~/.ssh/config
Host bastion
Hostname 51.250.0.131
User appuser


Host someinternalhost
ProxyJump appuser@51.250.0.131
User appuser
```

#### Проверяем
```
$ ssh someinternalhost
Welcome to Ubuntu 16.04.7 LTS (GNU/Linux 4.4.0-142-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage
appuser@someinternalhost:~$
```
## Дополнительное задание 2.
- sslip.io is a DNS
- Lets Encrypt needs ACME. Recommended is Certbot
- snapd needed to install CertBot
- add DNS name to pritunl from sslip.io

https://51.250.0.131.sslip.io/
