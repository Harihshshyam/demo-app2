pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/<your-username>/demo-app2.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t demo-app2:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker stop demo-app2 || true'
                sh 'docker rm demo-app2 || true'
                sh 'docker run -d -p 3001:3000 --name demo-app2 demo-app2:latest'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully! Docker container is running.'
        }
        failure {
            echo 'Pipeline failed! Check logs for errors.'
        }
    }
}
