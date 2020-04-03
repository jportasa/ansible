pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                cpu 1024
                memory 512
                inheritFrom 'base'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}