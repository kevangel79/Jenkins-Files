#!/bin/bash
DATE=`date +%d-%m-%y`
docker run --rm --volumes-from jekins-data \
        -v $(pwd):/backup ubuntu \
        tar cvf /backup/backup_${DATE}.tar /var/jenkins_home

#scp ./backup_${DATE}.tar remotehost:/backup-jenkins/