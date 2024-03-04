REM -- Nextcloud All In One Commands from my youtube video! youtube.com/@kltechvideos

REM -- VOlume 1 (Don't forget to amend to your path!) My path was:
REM -- D:\\NextCloud_Data
REM --- Pasted into windows command prompt!
REM -----------Do not copy this line, copy whats underneath!-----------
docker volume create ^
--driver local ^
--name nextcloud_aio_nextcloud_datadir ^
-o device="/host_mnt/d/NextCloud_Data" ^
-o type="none" ^
-o o="bind"


REM -- Volume 2 (Don't forget to amend to your path!) My path was:
REM -- D:\\NextCloud_Backup
REM -- Pasted into windows command prompt!
REM -- #-----------Do not copy this line, copy whats underneath!-----------
docker volume create ^
--driver local ^
--name nextcloud_aio_backupdir ^
-o device="/host_mnt/d/NextCloud_Backup" ^
-o type="none" ^
-o o="bind"