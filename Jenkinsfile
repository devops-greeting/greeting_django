pipeline {
    agent any
    parameters {
        string(name: 'name', defaultValue: 'Nhon', description: 'Ten')
    }
    environment {
        jobname = "${env.JOB_NAME}"
        ten = "${params.name}"
    }
    options {
	skipDefaultCheckout(true)
    }
    stages {
        stage('Checkout SCM') {
            steps {
                git branch : 'master',
                    credentialsId: '12345678',
                    url: 'https://github.com/nguyenhoangnhon/django.git'
            }
        }
        stage('Build') {
            steps {
                sh "JENKINS_NODE_COOKIE=dontKILLME nohup /var/lib/jenkins/workspace/${jobname}/build.sh"
            }
        }
	stage('Test') {
	    steps {
		sh 'pip3 install pytest-django'
		sh 'pytest'
	    }
	}
	stage('Deploy') {
	    steps {
		echo 'Deploy successfully'
	    }
        }		    
    }
}
