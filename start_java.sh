#!/bin/sh

java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005\
 -cp ./:./lib/shulika_drone_2.jar:./lib/log4j.jar:./lib/commons-io-2.4.jar:\
./lib/jssc-2.9.2.jar:./lib/mavlink2.jar: org.shulika.DroneMainApp
