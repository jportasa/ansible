pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs { label 'ansible' }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}