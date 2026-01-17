Root User Name: Amit Yadav
Email: amityadav7296@gmail.com
Pass: Amit@7296

# EC2

## Instance

### Reduce the access of .pem file

#### Window

- ```icacls .\aws-linux-vm.pem /inheritance:r```
- ```icacls .\aws-linux-vm.pem /grant:r "Administrator:(r)"```

#### Mac

- ```sudo chmod 644 aws-linux-vm.pem```

---

## EBS - Elastic Block Store

We can create additional volume but it should be in share availability zone

Steps:

1. While creating volume select same availability zone
2. Once volume created attached to the intance
3. Login to ec2 instance using ssh
4. run ```lsblk``` to see list out all block devices in a tree-like format
5. create file system using ```sudo mkfs -t xfs /dev/xvdf``` **`Do not run this command if you created volume using snapshot`**
6. create data directory using ```mkdir /data```
7. final step now mount your volume and /data using ```sudo mount /dev/xvdf /data``` command


S3 Access policy
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": "arn:aws:s3:::appbucket5000/*"
    }
  ]
}


















Query: 

1. VPC - Not clear 