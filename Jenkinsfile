pipeline {
    agent any

    stages {

        stage ('Build') {
            steps {
            sh 'docker build -t jenkins_example .'
            sh 'docker tag jenkins_example alibekdariger/jenkins1:v1'
        }
        }

        stage ('Push') {
            steps{
            sh 'docker push alibekdariger/jenkins1:v1'
        
            }}


        stage ('Deploy') {
            steps {
            sh 'ssh -o StrictHostKeyChecking=no -i /home/alibek/Downloads/alibek-key.pem ubuntu@ec2-3-122-112-192.eu-central-1.compute.amazonaws.com'
            sh 'docker pull alibekdariger/jenkins1:v1'
            sh 'docker run -d --name jenkins_test -p 8000:8000 alibekdariger/jenkins1:v1'
        }}


    }
    }

