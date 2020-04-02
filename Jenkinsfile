pipeline {
  agent none

  stages {
    stage('Test') {
        agent { label 'ansible'}
        steps {
            sh 'echo hello'
        }
    }
  }
}