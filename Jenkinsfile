pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                    label 'base'
                    image 'jenkinsci/jnlp-slave'
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