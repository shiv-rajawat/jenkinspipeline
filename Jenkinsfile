pipeline {
  agent any
  
  stages {
  
  stage('Checkout') {
      steps {
        checkout scm
        
      }
    }
    
    stage("Init"){
      steps {
       
        
        bat 'terraform init -var access_key="${env.AWS_ACCESS_KEY_ID}" -var secret_key="${env.AWS_SECRET_ACCESS_KEY}"'
        bat "terraform apply -var 'access_key=${env.AWS_ACCESS_KEY_ID}' -var 'secret_key=${env.AWS_SECRET_ACCESS_KEY}'  -auto-approve"
      }
    }
    }
    }
