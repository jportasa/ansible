pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                label 'ecs-ansible'
                image 'jportasa/ansible-jenkins-slave:1.0'
                launchType 'FARGATE'
                memory 1024
                cpu 512
                subnets 'subnet-02858318580bbce44,subnet-02858318580bbce44,subnet-02858318580bbce44,subnet-02858318580bbce44,subnet-02858318580bbce44,subnet-02858318580bbce44'
                securityGroups 'sg-00c646f83600015ce'
                assignPublicIp true
                inheritFrom 'jenkins-slave-ansible'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}