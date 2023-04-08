pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ApoorvBirje/Terraform.git']])
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ('terraform init -reconfigure') 
            }
        }
        stage ("validate") {
            steps {
                sh ('terraform validate') 
            }
        }
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }
        

        stage (" Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}