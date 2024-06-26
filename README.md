[ docker-stuff ]  Install and configure docker stuff from Youtube
================================================================================

[ Dockage ]
================================================================================
## Install Dockge A Docker Companion On Windows!
https://www.youtube.com/watch?v=lEwEgR-nja4&t=0s
https://github.com/AmIBeingObtuse/Youtubestacks/blob/main/Dockge%20run%20command


### Create network:
Use [./dockge/dockage_create_network.bat](./dockge/dockage_create_network.bat)

```
C:\dev\dockge>docker network create --subnet=175.1.1.2/24 --gateway=175.1.1.1 Dockge
```

### Run dockge container

Use [./dockge/dockage_run.bat](./dockge/dockage_run.bat)

[ Homarr ]
================================================================================
## Install Homarr On Docker On Windows Using Dockge
https://www.youtube.com/watch?v=b1QREIsTgok

Use [./homarr/compose.yaml](./homarr/compose.yaml)

[ Nginx Proxy Manager ]
================================================================================
## Nginx Proxy Manager On Docker On Dockge On Windows
https://www.youtube.com/watch?v=FUqpIsNP7Js


https://www.instructables.com/Quick-and-Dirty-Dynamic-DNS-Using-GoDaddy/
https://github.com/navilg/godaddy-ddns


### FIX for Issue with certbot when creating SSL certificate - log into terminal on nginx-proxy-manager container
```
# cd /opt/certbot
# /opt/certbot/bin/pip install acme==1.32.0
Collecting acme==1.32.0
  Downloading acme-1.32.0-py3-none-any.whl (50 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 50.0/50.0 kB 1.9 MB/s eta 0:00:00
Requirement already satisfied: cryptography>=2.5.0 in ./lib/python3.7/site-packages (from acme==1.32.0) (2.8)
Requirement already satisfied: josepy>=1.13.0 in ./lib/python3.7/site-packages (from acme==1.32.0) (1.14.0)
Requirement already satisfied: PyOpenSSL>=17.5.0 in ./lib/python3.7/site-packages (from acme==1.32.0) (19.1.0)
Requirement already satisfied: pyrfc3339 in ./lib/python3.7/site-packages (from acme==1.32.0) (1.1)
Requirement already satisfied: pytz>=2019.3 in ./lib/python3.7/site-packages (from acme==1.32.0) (2023.3.post1)
Requirement already satisfied: requests>=2.20.0 in ./lib/python3.7/site-packages (from acme==1.32.0) (2.31.0)
Collecting requests-toolbelt>=0.3.0 (from acme==1.32.0)
  Downloading requests_toolbelt-1.0.0-py2.py3-none-any.whl (54 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 54.5/54.5 kB 1.7 MB/s eta 0:00:00
Requirement already satisfied: setuptools>=41.6.0 in ./lib/python3.7/site-packages (from acme==1.32.0) (68.0.0)
Requirement already satisfied: six>=1.4.1 in ./lib/python3.7/site-packages (from cryptography>=2.5.0->acme==1.32.0) (1.16.0)
Requirement already satisfied: cffi!=1.11.3,>=1.8 in ./lib/python3.7/site-packages (from cryptography>=2.5.0->acme==1.32.0) (1.15.1)
Requirement already satisfied: charset-normalizer<4,>=2 in ./lib/python3.7/site-packages (from requests>=2.20.0->acme==1.32.0) (3.3.2)
Requirement already satisfied: idna<4,>=2.5 in ./lib/python3.7/site-packages (from requests>=2.20.0->acme==1.32.0) (3.6)
Requirement already satisfied: urllib3<3,>=1.21.1 in ./lib/python3.7/site-packages (from requests>=2.20.0->acme==1.32.0) (1.26.18)
Requirement already satisfied: certifi>=2017.4.17 in ./lib/python3.7/site-packages (from requests>=2.20.0->acme==1.32.0) (2023.11.17)
Requirement already satisfied: pycparser in ./lib/python3.7/site-packages (from cffi!=1.11.3,>=1.8->cryptography>=2.5.0->acme==1.32.0) (2.21)
Installing collected packages: requests-toolbelt, acme
  Attempting uninstall: acme
    Found existing installation: acme 2.5.0
    Uninstalling acme-2.5.0:
      Successfully uninstalled acme-2.5.0
Successfully installed acme-1.32.0 requests-toolbelt-1.0.0

[notice] A new release of pip is available: 23.3.2 -> 24.0
[notice] To update, run: python3 -m pip install --upgrade pip
# certbot renew -v
Saving debug log to /var/log/letsencrypt/letsencrypt.log

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
No renewals were attempted.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#
```

[ NextCloud AIO ] Next Cloud All-in-One
================================================================================
## Nextcloud All In One On Docker On Windows Using Dockge
https://www.youtube.com/watch?v=R4OEt3cdDVk
https://github.com/nextcloud/all-in-one#how-to-run-aio-on-windows

## Nextcloud All In One Commands from my youtube video! youtube.com/@kltechvideos
https://github.com/AmIBeingObtuse/Youtubestacks/blob/main/Nextcloud%20All%20In%20One

### route subdomain
- http://api.godaddy.com
- add "A" record for cloud.santeeplace.com to ext ip address (https://whatismyipaddress.com/)

### npm : Add SSL Certificate in Nginx Proxy Manager
- domain name = cloud.santeplace.com
- Use DNS Challenge
- GoDaddy: http://api.godaddy.com (key + secret)

### DuckDNS DDNS
- https://www.duckdns.org/
- use intcatrex@gmail.com (goolge login)
- install DuckDNS client: http://www.etx.ca/products/windows-applications/duckdns-update-client/#google_vignette (requires Java SE)


### npm : New Proxy Host
- http : internal IP : port = 11000
- block common exploits
- websockets support
- SSL: Pick the certificate, Force SSL, HTTP2 Support
- Advanced:

Use [./nextcloud-aio/nginx_proxy_manager.config](./nextcloud-aio/nginx_proxy_manager.config)

### Create data mounts

Note: These directories must exist or install will fail
Note: Also, it doesn't look like it works with USB drive - only SATA
Use [./nextcloud-aio/create_vols.bat](./nextcloud-aio/create_vols.bat)

### Dockge: start up services

Use [./nextcloud-aio/compose.yaml](./nextcloud-aio/compose.yaml)

### run occ scan to pick up files added directly to files folders

```
docker exec -ti --user www-data nextcloud-aio-nextcloud /var/www/html/occ files:scan --all
```

or run from inside nextcloud-aio-nextcloud container:

```
sudo -u www-data php occ files:scan --all
```


### Set up local external storage

https://www.reddit.com/r/NextCloud/comments/136bgvb/trying_to_get_external_storage_local_to_work_with/


### Turn off Maintenance Mode

```
sudo -u www-data php occ maintenance:mode --off
```

### Scan external folder
```
sudo -u www-data php occ files:scan --path="rex/files/Financial"
```


## Cloudfare usage

https://www.youtube.com/watch?v=GarMdDTAZJo

