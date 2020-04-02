pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                launchType 'FARGATE'
                memory 1024
                inheritFrom 'ansible'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}