pipeline {
    agent none

    stages {
        stage('Test') {
            when {
                branch 'master'
            }
            environment {
                STAGE='prod'
            }
            agent {
                ecs {
                   cloud 'jenkins-slave-ecs'
                   image '953835556803.dkr.ecr.us-east-1.amazonaws.com/jenkins-slave-ansible:1.0'
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
                sh '''
                    ansible -h
                    echo $(STAGE)
                   '''

            }
        }
    }
}