pipeline {
    agent any

    stages {
        stage('git clone') {
            steps {
                sh '''
                git clone git@github.com:skalajonson/Terraform_ultimate.git
                cd Terraform_ultimate/
                '''
            }
        }
        stage('Run EC2 wordpress') {
            steps {
                sh '''
                cd EC2/
                terraform init

                terraform apply --auto-approve
                '''
            }
        }
        stage('Run IAM create user') {
            steps {
                sh '''
                cd IAM/
                terraform init
                terraform validate
                terraform apply --auto-approve
                '''
            }
        }
        stage('Run S3 bucket') {
            steps {
                sh '''
                cd S3/
                terraform init
                terraform validate
                terraform apply --auto-approve
                terraform apply --auto-approve
                '''
            }
        }
    }
}
