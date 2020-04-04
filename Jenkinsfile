pipeline {
    agent none

    stages {
        stage('Test') {
            agent {

                ecs {
                   cloud 'jenkins-slave-ecs'
                   label 'test2'
                   image 'jenkinsci/jnlp-slave'
                   launchType 'FARGATE'
                   memory 1024
                   cpu 256
                   subnets('subnet-08086cbe2d97a1ff1')
                   securityGroups('sg-08f3f54702fb3992e')
                   taskrole 'arn:aws:iam::953835556803:role/ecsTaskExecutionRole'
                   executionRole 'arn:aws:iam::953835556803:role/ecsTaskExecutionRole'
                   assignPublicIp true
                }
            }
            steps {
                sh 'echo hello'
            }
        }
    }
}