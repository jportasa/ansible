# Bona docu sobre inventaris dinamics, filtrant per tag

https://aws.amazon.com/blogs/apn/getting-started-with-ansible-and-dynamic-amazon-ec2-inventory-management/

playbook_maquines_ec2.yml:
```
---
- name: install apache in ec2 with tag OS centos
  hosts: tag_OS_centos
  user: ec2-user
  sudo: yes
  tasks:
  - name: Install latest apache
    yum:
      name: httpd
      state: latest
```
```
ansible-playbook -i ./inventari playbook_maquines_ec2.yml
```

