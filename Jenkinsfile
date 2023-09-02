pipeline {
    agent any
    environment {
        PATH = "/mnt/meven/apache-maven-3.9.4/bin:$PATH"
    }
    stages {
        stage('scm') {
            steps {
                git 'https://github.com/Ravimore001/project.git'
            }
        }
        stage('deploy') {
            steps {
                sh "mvn clean install"
            }
        }
         stage('build-docker') {
            steps {
                sh "docker build -t ravimore001/my-image ."
            }
        }
        stage('docker_deploy') {
            steps {
                withCredentials([string(credentialsId: 'docker_cred', variable: 'docker')]) {
                sh "docker login -u ravimore001 -p ${docker}"
        }
               
                sh "docker push ravimore001/my-image"
            }
        }
        stage('ansible-playbook') {
            steps {
                
              ansiblePlaybook become: true, credentialsId: 'ansadmin', installation: 'ansible', inventory: 'Env-file', playbook: 'ansible-docker.yaml'  
                
            }
        
        }  
    }
}
