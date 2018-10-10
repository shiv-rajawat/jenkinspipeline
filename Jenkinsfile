pipeline {
  agent any
  environment {
      AWS_ACCESS_KEY_ID     = env('access-key')
      AWS_SECRET_ACCESS_KEY = env('secret-key')
  }
  stages {
  
  stage('Checkout') {
      steps {
        checkout scm
        
      }
    }
    
    stage("Init"){
      steps {
        bat 'terraform init'
        bat 'terraform apply -input=false -auto-approve'
      }
    }
    }
    }
