#!/bin/sh

set -e

# Name of our DATA container
TAG="DBDATA"

CONTAINER_ID=$(docker ps -a | grep $TAG | awk '{print $1}')

if [ -z $CONTAINER_ID ] ; then

  echo "Creating DBDATA Container...";
  docker run -v /var/lib/mysql --name DBDATA busybox true

  CONTAINER_ID=$(docker ps -a | grep $TAG | awk '{print $1}')
  echo "Created DBDATA with containerId: $CONTAINER_ID ";

  # Create DB and import DB schema
 
else
 echo "Found DBDATA with containerId: $CONTAINER_ID ";
 echo "DBDATA container already exist. Can't proceed. Please delete it and then continue."

fi
