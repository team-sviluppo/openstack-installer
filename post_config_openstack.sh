#!/bin/bash
source openrc admin admin
openstack flavor delete ds512M
openstack flavor delete ds1G
openstack flavor delete ds2G
openstack flavor delete ds4G
openstack flavor delete ds4G
openstack flavor delete m1.large
openstack flavor delete m1.xlarge
openstack flavor create --id 6 --ram 1024 --disk 10 --vcpus 1 --property hw_rng:allowed=True m1.nano

wget http://cloud-images.ubuntu.com/releases/22.04/release/ubuntu-22.04-server-cloudimg-amd64.img
openstack image create "Ubuntu2204" --file ubuntu-22.04-server-cloudimg-amd64.img --disk-format qcow2 --container-format bare --public
rm ubuntu-22.04-server-cloudimg-amd64.img
