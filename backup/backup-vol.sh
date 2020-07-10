#!/bin/bash
DATE=`date +%d-%m-%y`
docker run --rm --volumes-from deployment_jenkins_1 \
        -v $(pwd)/thinBackups:/backup ubuntu \
        tar cvf /backup/backup_${DATE}.tar /var/jenkins_home/backups/
