**Copy Server File**

scp credilio-d6-api:/home/ubuntu/credilio-api/.data/seed-data/Partner.json .
scp credilio-d6-api:/home/azure/credilio-api/certificates /home/amit-yadav/Documents/Credilio/
certificates

**Port**

sudo netstat -tuln // To see all running port
sudo lsof -i :80 // To see service using any particular port e.g. 80
sudo kill pi // To kill the process