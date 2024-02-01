[ docker-stuff ]  Install and configure docker stuff from Youtube
================================================================================

## Install Dockge A Docker Companion On Windows!
https://www.youtube.com/watch?v=lEwEgR-nja4&t=0s
https://github.com/AmIBeingObtuse/Youtubestacks/blob/main/Dockge%20run%20command


## 1. Create network:
```
C:\dev\dockge>docker network create --subnet=175.1.1.2/24 --gateway=175.1.1.1 Dockge
```

## 2. Run dockge container
```
docker run -d ^
  --restart=always ^
  --name="dockge-container" ^
  --network=Dockge ^
  --ip="175.1.1.3" ^
  -p=9333:5001 ^
  -v="C:\dev\docker-stuff\Dockge\app:/app/data" ^
  -v="C:\dev\docker-stuff\Dockge\opt:/opt/stacks" ^
  -v="/var/run/docker.sock:/var/run/docker.sock" ^
  louislam/dockge:1
```

[ Homarr ]
================================================================================
## Install Homarr On Docker On Windows Using Dockge
https://www.youtube.com/watch?v=b1QREIsTgok


[ Nginx Proxy Manager ]
================================================================================
## Nginx Proxy Manager On Docker On Dockge On Windows
https://www.youtube.com/watch?v=FUqpIsNP7Js


https://www.instructables.com/Quick-and-Dirty-Dynamic-DNS-Using-GoDaddy/
https://github.com/navilg/godaddy-ddns


[ NextCloud AIO ] Next Cloud All-in-One
================================================================================
## Nextcloud All In One On Docker On Windows Using Dockge
https://www.youtube.com/watch?v=R4OEt3cdDVk
https://github.com/nextcloud/all-in-one#how-to-run-aio-on-windows

## Nextcloud All In One Commands from my youtube video! youtube.com/@kltechvideos
https://github.com/AmIBeingObtuse/Youtubestacks/blob/main/Nextcloud%20All%20In%20One

