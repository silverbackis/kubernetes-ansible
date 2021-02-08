#!/usr/bin/env bash

source ./openrc
ssh-add ~/.ssh/id_rsa

# ~/Library/Python/2.7/bin/ansible-playbook
# for user uuid run `openstack user show <username>`
ansible-playbook site.yaml -e "reource_prefix=sbwa \
key_name=macbook-pro-default \
flavor_master=UKF2-std-8x8 \
flavor_worker=UKF2-std-4x4 \
image=af97568c-e513-424d-823e-d95caee94554 \
external_network_name=vlan2803 \
worker_node_number=2 \
auth_url=$OS_AUTH_URL \
user_id=$OS_USER_UUID \
password=$OS_PASSWORD \
tenant_id=$OS_PROJECT_ID \
region=$OS_REGION_NAME \
private_key_file=$HOME/.ssh/id_rsa \
support_octavia=no \
remove_worker_floatingip=true \
mysql_password=$MYSQL_PASSWORD \
ca_email=info@silverback.is"
