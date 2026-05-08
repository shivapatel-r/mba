pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'JDK21'
    }
    stage('SonarQube Scan') {
         steps {
             withSonarQubeEnv('SonarQube') {
                 bat 'mvn sonar:sonar'
             }
         }
     }


    stages {

        stage('Build') {
            steps {
                bat 'mvn clean package -DskipTests'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t moviebooking:v1 .'
            }
        }

        stage('Docker Run') {
            steps {
                bat 'docker rm -f moviebooking || exit 0'
                bat 'docker run -d -p 8085:8080 --name moviebooking moviebooking:v1'
            }
        }
    }
}