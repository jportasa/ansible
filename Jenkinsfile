pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                    cloud 'jenkins-slave-ansible'
                    label 'base'
                    image 'jportasa/ansible-jenkins-slave'
                    launchType 'FARGATE'
                    memory 1024
                    cpu 256
                    subnets 'subnet-02858318580bbce44'
                    securityGroups 'sg-00c646f83600015ce'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}