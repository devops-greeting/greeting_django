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
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh "BUILD_ID=dontKillMe nohup /var/lib/jenkins/workspace/${jobname}/build.sh"
            }
        }
    }
}
