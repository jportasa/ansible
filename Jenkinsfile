pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                    cloud 'jenkins-slave-ansible'
                    label 'jenkins-slave-ansible'
                    image 'jportasa/jenkins-slave-ansible:1.0'
                    launchType 'FARGATE'
                    memory 1024
                    cpu 256
                    subnets 'subnet-02858318580bbce44'
                    securityGroups 'sg-00c646f83600015ce'
                    taskrole 'arn:aws:iam::953835556803:role/ecsTaskExecutionRole'
                    executionRole 'arn:aws:iam::953835556803:role/ecsTaskExecutionRole'
                    inheritFrom 'jenkins-slave-ansible'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}