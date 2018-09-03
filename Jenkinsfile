pipeline {
    agent any
    parameters {
        string(name: 'name', defaultValue: 'Nhon', description: 'Ten')
    }
    environment {
        jobname = "${env.JOB_NAME}"
        ten = "${params.name}"
    }

    stages {
        stage('Clone') {
            steps {
                git branch : 'master',
                    credentialsId: '12345678',
                    url: 'https://github.com/nguyenhoangnhon/django.git'
            }
        }
        stage('Build') {
            steps {
                echo "${BUILD_ID}"
                sh "JENKINS_NODE_COOKIE=dontKILLME nohup /var/lib/jenkins/workspace/${jobname}/build.sh"
            }
        }
    }
}
