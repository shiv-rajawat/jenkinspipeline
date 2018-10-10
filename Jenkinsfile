pipeline {
  agent any
  environment {
      AWS_ACCESS_KEY_ID     = env.AWS_ACCESS_KEY_ID
      AWS_SECRET_ACCESS_KEY = env.AWS_SECRET_ACCESS_KEY)
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
