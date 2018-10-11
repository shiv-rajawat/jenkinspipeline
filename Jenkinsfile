pipeline {
  agent any
  
  environment {
        AWS_ACCESS_KEY_ID     = credentials('jenkins-aws-secret-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('jenkins-aws-secret-access-key')
    }
  
  stages { 
    
    stage('Checkout') {
        steps {
          checkout scm        
        }
    }      
    
    stage("Init"){
        steps {
          echo "Initializing Terraform working directory."
          sh "terraform init -var access_key='${AWS_ACCESS_KEY_ID}' -var secret_key='${AWS_SECRET_ACCESS_KEY}'"
        }
    }
    
    stage("Plan"){
        steps {
          echo "Generating the terraform plan and storing it in terraform.plan file."
          sh "terraform plan -out=/terraform.plan -var access_key='${AWS_ACCESS_KEY_ID}' -var secret_key='${AWS_SECRET_ACCESS_KEY}'  -auto-approve "
        }
    }
    
    stage("Build"){
        steps {
          echo "Applying the terraform configuration."
          sh "terraform apply /terraform.plan -var access_key='${AWS_ACCESS_KEY_ID}' -var secret_key='${AWS_SECRET_ACCESS_KEY}'  -auto-approve"
        }
    }
      
    stage("Destroy"){
        steps {
          echo "Destroying the applied resources."
          sh "terraform destroy -var access_key='${AWS_ACCESS_KEY_ID}' -var secret_key='${AWS_SECRET_ACCESS_KEY}'  -auto-approve"
        }
    }
  }
}
