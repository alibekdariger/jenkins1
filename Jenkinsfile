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

                sh 'docker pull alibekdariger/jenkins1:v3'
                sh 'docker run -d --name jenkins_test -p 8000:8000 alibekdariger/jenkins1:v3'
        //    sh '''
          //      sudo ssh -o StrictHostKeyChecking=no -i /home/alibek/Downloads/alibek-key.pem ubuntu@ec2-3-70-203-231.eu-central-1.compute.amazonaws.com '
            //    docker pull alibekdariger/jenkins1:v3;
              //  docker rm jenkins_test;
                //docker run -d --name jenkins_test -p 8000:8000 alibekdariger/jenkins1:v3'
        //'''
    }
        }
    }
}

test
