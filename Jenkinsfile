pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {

                    cloud 'cloud-default'
                    label 'ecs'
                    image 'jenkinsci/jnlp-slave'
                    launchType 'FARGATE'
                    memory 4096
                    cpu 2048
                    subnets 'subnet-02858318580bbce44'
                    securityGroups 'sg-00c646f83600015ce'
                    assignPublicIp true
                    inheritFrom 'ansible'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}