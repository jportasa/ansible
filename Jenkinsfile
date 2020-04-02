pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                launchType 'FARGATE'
                memory 1024
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}