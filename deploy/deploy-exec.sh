#!/bin/sh
CURRENT_PID_ADMIN=$(pgrep -f server-management-MANAGEMENT.jar)
echo CURRENT_PID

if [ -z $CURRENT_PID_ADMIN]
then
  echo "종료 할 것이 없음"
else
  echo "> kill -9 $CURRENT_PID_ADMIN"
  kill -9 $CURRENT_PID_ADMIN
  sleep 5
fi
echo "> 배포 시작"
nohup java -jar ~/blog/jar/server-management-MANAGEMENT.jar > /logs/server-management.log 2>&1 &
