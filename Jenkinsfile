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
        stage('terraform init') {
            steps {
                sh 'sudo  cd /usr/local/bin/terraform init'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /usr/local/bin/terraform plan'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }


    }
}

