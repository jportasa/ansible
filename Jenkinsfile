pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                    cloud 'ecs-cloud'
                    label 'ansible'
                    image 'jenkinsci/jnlp-slave'
                    launchType 'FARGATE'
                    memory 4096
                    cpu 2048
                    subnets 'subnet-02858318580bbce44'
                    securityGroups 'sg-00c646f83600015ce'
                    assignPublicIp true
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}