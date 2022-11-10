#!/bin/bash


error() {
  printf '\E[31m'; echo "$@"; printf '\E[0m'
}

if [[ $EUID -eq 0 ]]; then
   echo
   echo "### stop docker_compose ###"
   echo

   export CONFIG_SERVICE_HOST='config'
   export CONFIG_SERVICE_PASSWORD='123456'
   export NOTIFICATION_SERVICE_PASSWORD='123456'
   export STATISTICS_SERVICE_PASSWORD='123456'
   export ACCOUNT_SERVICE_PASSWORD='123456'
   export MONGODB_PASSWORD='123456'

   #docker-compose down 
   docker-compose down --remove-orphans

else
  error "This script should  be run using sudo or as the root user"
  exit 1
fi
