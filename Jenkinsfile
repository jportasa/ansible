pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                inheritFrom 'ansible'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}