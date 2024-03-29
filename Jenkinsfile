pipeline {
    agent any

    stages {

        stage ('Build') {
            steps {
            sh 'docker build -t jenkins_example .'
            sh 'docker tag jenkins_example alibekdariger/jenkins1:v3'
        }
        }

        stage ('Push') {
            steps{
            sh 'docker push alibekdariger/jenkins1:v3'
        
            }}


        stage ('Deploy') {
            steps {
            sh '''
                docker pull alibekdariger/jenkins1:v3;
                docker rm jenkins_test;
                docker run -d --name jenkins_test -p 8000:8000 alibekdariger/jenkins1:v3
        '''
    }
        }
