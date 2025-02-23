Edit cron file
> sudo vim /etc/crontab

Example
> */1 * * * *   azureuser   cd /home/azureuser/credilio-api && /home/azureuser/.nvm/versions/node/v20.3.1/bin/node ace rbl-novio-cc:lead-kyc-status >> /home/azureuser/cron-logs/rbl-novio-kyc-status.log 2>&1


NOTE:
1. check node version
2. check log folder is exists, If not then create