#!/bin/bash

pubkey="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDwNccungMJIs2cr2IicFAsqmYZeOuiowmQedu7qcAwdGX23e2pTNk5Ou10zjZPz1hYWsH3+zbqo73yueMiFzRszeYVxHIp0WUdigEpOohDd0Ok0WimNE0okbFIjLYQ5esj4lyeDcGCvKyOhkW5zpH0IdG6QrYjNh/v3Euhpc2ZV/MgFNZp9csFWzW6tQ2+SW7ocILi5WpAnQ1KZ9A8ZeFoNEwFB1BVIzrNZP6OYitizvLpVUjZdVxqgyXnpc8Rz+Vk/Hn0JE4oWAVuKZZ46RLZRBiYgu1ziighOlB78xeFLzwBey2125mm0EHD5ksqFMcxncY4oW6M+Xtd1WcIaEg/ root@e6932545bff5"
authfile="/root/.ssh/authorized_keys"
sudo echo "$pubkey" >> $authfile

sudo  apt install python -y

