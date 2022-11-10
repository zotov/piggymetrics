#!/bin/bash


error() {
  printf '\E[31m'; echo "$@"; printf '\E[0m'
}

if [[ $EUID -eq 0 ]]; then
   echo
   echo "### start prod  docker_compose ###"
   echo

   export CONFIG_SERVICE_HOST='config'
   export CONFIG_SERVICE_PASSWORD='123456'
   export NOTIFICATION_SERVICE_PASSWORD='123456'
   export STATISTICS_SERVICE_PASSWORD='123456'
   export ACCOUNT_SERVICE_PASSWORD='123456'
   export MONGODB_PASSWORD='123456'

   #docker-compose.yml
   #docker-compose  up
   docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
   #docker-compose -f docker-compose.yml -f docker-compose.dev1.yml up
else
  error "This script should  be run using sudo or as the root user"
  exit 1
fi

