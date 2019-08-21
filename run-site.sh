#!/usr/bin/env bash

source ./openrc

# for user uuid run `openstack user show <username>`
ansible-playbook site.yaml -e "reource_prefix=sbwa \
key_name=mac-pro \
flavor=UKF2-std-2x2 \
image=6f526ede-0b07-4e7f-be83-84f474ebcd2e \
external_network_name=vlan2803 \
worker_node_number=1 \
auth_url=$OS_AUTH_URL \
user_id=$OS_USER_UUID \
password=$OS_PASSWORD \
tenant_id=$OS_PROJECT_ID \
region=$OS_REGION_NAME \
private_key_file=$HOME/.ssh/id_rsa \
support_octavia=no \
remove_worker_floatingip=true \
ca_email=info@silverback.is"
