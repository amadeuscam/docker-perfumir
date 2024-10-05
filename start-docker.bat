@echo off
SET URL=http://localhost:3000
SET SLEEP_TIME=15

echo Starting Docker Compose...
docker-compose up -d

echo Waiting for services to start...
ping 127.0.0.1 -n %SLEEP_TIME% >nul

echo Opening %URL%...
start "" "%URL%"
