pipeline {
  agent any
  environment {
      AWS_ACCESS_KEY_ID     = "AWS_ACCESS_KEY_ID"
      AWS_SECRET_ACCESS_KEY = "AWS_SECRET_ACCESS_KEY"
  }
  stages {
  
  stage('Checkout') {
      steps {
        checkout scm
        
      }
    }
    
    stage("Init"){
      steps {
        bat 'terraform init -backend-config="access_key=${env.AWS_ACCESS_KEY_ID}" -backend-config="secret_key=${env.AWS_SECRET_ACCESS_KEY}"'
        bat 'terraform apply -var access_key=${env.AWS_ACCESS_KEY_ID} -var secret_key=${env.AWS_SECRET_ACCESS_KEY} -input=false -auto-approve'
      }
    }
    }
    }
