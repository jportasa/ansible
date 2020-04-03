pipeline {
  agent none

  stages {
    stage('Test') {
        agent {
            ecs {
                    label 'jenkins-slave-ansible'
                    image 'jenkinsci/jnlp-slave'
                    launchType 'FARGATE'
                    subnets 'subnet-02858318580bbce44'
                    securityGroups 'sg-00c646f83600015ce'
            }
        }
        steps {
            sh 'echo hello'
        }
    }
  }
}