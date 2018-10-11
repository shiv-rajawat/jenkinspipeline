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
          echo "Initializing Terraform working directory."
          sh "terraform init -var access_key='${env.AWS_ACCESS_KEY_ID}' -var secret_key='${env.AWS_SECRET_ACCESS_KEY}'"
        }
    }
    
    stage("Build"){
        steps {
          echo "Applying the terraform configuration."
          sh "terraform apply -var access_key='${env.AWS_ACCESS_KEY_ID}' -var secret_key='${env.AWS_SECRET_ACCESS_KEY}'  -auto-approve"
        }
    }
      
    stage("Destroy"){
        steps {
          echo "Destroying the applied resources."
          sh "terraform destroy -var access_key='${env.AWS_ACCESS_KEY_ID}' -var secret_key='${env.AWS_SECRET_ACCESS_KEY}'  -auto-approve"
        }
    }
  }
}
