pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                inheritFrom 'base'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}