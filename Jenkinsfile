pipeline {
    agent {
        node { label 'Jekyll' }
    }

    stages {
        stage('Download') {
            steps {
                // Delete old files
                sh 'rm -rf .[^.] .??* *'

                // Checkout the git repository and refspec pointed to by jenkins
                checkout scm
            }
        }

        // Configure the software
        stage('Configure') {
            steps {
                script {
                    sh "bundle install --path vendor/bundle"
                }
            }
        }

        stage("Build") {
            steps {
                sh "bundle exec jekyll build"
            }
        }

        stage("Test") {
           steps {
               sh "bundle exec htmlproofer _site"
           }
        }

        stage('Archive') {
            steps {
                // Store the artifacts of the entire build
                archive "_site/**/*"
            }
        }
    }
}
