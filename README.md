# just4lex_infra
just4lex Infra repository


bastion_IP = 51.250.0.131

someinternalhost_IP = 10.128.0.31

testapp_IP = 51.250.12.180

testapp_port = 9292


## HW 11:
  Создано много конфигов для ansible:
    - Один плейбук на всё
    - Несколько плейбуков в одном файле
    - Каждый плейбук в своем файле + главный файл, в который все импортим
  Созданы пакер-плейбуки для формирования образа
  Все проверено и развернуто

## HW 10:
  В первой случае изменений не потребовалось, хэши папки до и после клона сошлись. Во втором changed=1 т.к. хэши не сошлись и произошли изменения (хорошо видно при выполнении с -vv)

## Разворачивание виртуалки для reddit

```bash
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./metadata.yml
```
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
