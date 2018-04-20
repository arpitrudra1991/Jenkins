pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/arpitrudra1991/Jenkins.git'
            }
        }
        stage('tfsvars create'){
            steps {
                sh 'sudo cp /usr/local/bin/vars.tf ./jenkins/'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /usr/local/bin/terraform init ./jenkins'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /usr/local/bin/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
