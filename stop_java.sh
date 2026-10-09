#!/bin/sh

echo "Stopping service"
    PID=`ps aux | grep shulika_drone_2.jar`
    if [ "$PID" == "" ]; then
        echo -n FAILED
    else
        echo -n DONE
        kill -15 $PID
    fi
