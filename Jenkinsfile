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
        bat 'start cmd.exe /c terraform init -input=false'
        call 'terraform apply -input=false -auto-approve'
      }
    }
    }
    }
