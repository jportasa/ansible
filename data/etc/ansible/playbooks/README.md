
## Creo EC2
```
ansible-playbook  ./playbooks/crea_ec2.yml --extra-vars "os=amazon code=php feature=new_frontend ansible_python_interpreter=/usr/bin/python"
```

## Configuro EC2
```
ansible-playbook -i ./inventari ./playbooks/configura_ec2.yml --extra-vars "os=amazon code=php feature=new_frontend ansible_python_interpreter=/usr/bin/python"
```

## Destrueixo ec2
```
ansible-playbook -i ./inventari ./playbooks/destrueix_ec2.yml --extra-vars "version=1.23.45 other_variable=foo ansible_python_interpreter=/usr/bin/python3"
```
--extra-vars "version=1.23.45 other_variable=foo"

# Jenkins install in EC2

```
apt-get update
apt install ansible
cd /etc/ansible
mkdir roles
cd roles
ansible-galaxy install -p . geerlingguy.jenkins
ansible-galaxy install -p . geerlingguy.java
cd ..
cat <<'EOF' >>  create_jenkins.yml
- name: Install Jenkins
  become: yes
  hosts: localhost
  
  vars:
    jenkins_hostname: jenkins.example.com
    java_packages:
      - openjdk-8-jdk

  roles:
    - role: geerlingguy.java
    - role: geerlingguy.jenkins
EOF
ansible-playbook create_jenkins.yml


```