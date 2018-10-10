pipeline {
  agent any
  environment {
      AWS_ACCESS_KEY_ID     = credentials('access-key')
      AWS_SECRET_ACCESS_KEY = credentials('secret-key')
  }
  stages {
  
  stage('Checkout') {
      steps {
        checkout scm
        
      }
    }
    
    stage("Init"){
      steps {
        sh 'terraform init'
        sh 'terraform apply -input=false -auto-approve'
      }
    }
    }
    }
