pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE_NAME = "hello-world-app"
    }
    
    stages {
        // Stage 1: Clone the repository
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Viswavardinii/LearningFD.git'
            }
        }
        
        // Stage 2: Build the Docker image
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE_NAME)
                }
            }
        }
        
        // Stage 3: Run the Docker container
        stage('Run and Test Container') {
            steps {
                bat 'docker run hello-world-app'
            }
        }
    }
    
    post {
        always {
            echo "Pipeline completed."
        }
    }
}
