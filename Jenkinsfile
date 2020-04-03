pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}