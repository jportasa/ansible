pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                image 'jportasa/ansible-jenkins-slave:1.0'
                launchType 'FARGATE'
                memory 1024
                cpu 512
                inheritFrom 'jenkins-slave-ansible'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}