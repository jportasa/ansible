pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                cloud 'default-cloud'
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