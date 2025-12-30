pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        git '<your-github-repo-url>'
      }
    }

    stage('Build Image') {
      steps {
        sh 'docker build -t <dockerhub-username>/trend-app:latest .'
      }
    }

    stage('Push Image') {
      steps {
        sh 'docker push <dockerhub-username>/trend-app:latest'
      }
    }

    stage('Deploy to EKS') {
      steps {
        sh 'kubectl apply -f deployment.yaml'
        sh 'kubectl apply -f service.yaml'
      }
    }
  }
}
