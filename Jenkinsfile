pipeline {
    agent none

    stages {
        stage('Test') {
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
                   logDriver 'awslogs'
                   logDriverOptions([[name: 'awslogs-region', value:'us-east-1'], [name: 'awslogs-group', value: 'jenkins-slave'], [name: 'awslogs-stream-prefix', value: 'alpine']])

                }
            }
            steps {
                sh '''
                    ansible -h
                    echo $(STAGE)
                    echo $(STAGE)
                    echo $(STAGE)
                   '''

            }
        }
    }
}