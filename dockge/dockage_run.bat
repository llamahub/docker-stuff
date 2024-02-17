REM -- Here are the commands for the Dockge Video.
REM -- (A BUG IN THE PROJECT IS CURRENTLY BEING LOOKED INTO, PLEASE USE THE NIGHTLY VERSION - SHOULD BE OKAY AFTER VERSION 1.4.2 THEN YOU CAN GO BACK TO VERSION 1 TAG)

REM -- This is the nightly run command. See message at the top.

REM docker run -d ^
REM   --restart=always ^
REM   --name="dockge-container" ^
REM   --network=Dockge ^
REM   --ip="175.1.1.3" ^
REM   -p=9333:5001 ^
REM   -v="C:\dev\docker-stuff_config\Dockge\app:/app/data" ^
REM   -v="C:\dev\docker-stuff_config\Dockge\opt:/opt/stacks" ^
REM   -v="/var/run/docker.sock:/var/run/docker.sock" ^
REM   louislam/dockge:nightly

REM -- The in windows command prompt paste this run command (Don't forget to modify the volume directories below to match your own paths just don't modify after the :.

docker run -d ^
  --restart=always ^
  --name="dockge-container" ^
  --network=Dockge ^
  --ip="175.1.1.3" ^
  -p=9333:5001 ^
  -v="C:\dev\docker-stuff_config\Dockge\app:/app/data" ^
  -v="C:\dev\docker-stuff_config\Dockge\opt:/opt/stacks" ^
  -v="/var/run/docker.sock:/var/run/docker.sock" ^
  louislam/dockge:1

REM -- After a few minutes Dockge will be running.

REM -- In our video we used the latest tag but the developer recommends the :1 tag so we put that above.
