pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                    cloud 'jenkins-slave-ansible'
                    label 'base'
                    image '953835556803.dkr.ecr.us-east-1.amazonaws.com/jenkins-slave-ansible:1.0'
                    launchType 'FARGATE'
                    memory 1024
                    cpu 256
                    subnets 'subnet-02858318580bbce44'
                    securityGroups 'sg-00c646f83600015ce'
                    inheritFrom 'base'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}