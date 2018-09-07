pipeline {
    agent {
        dockerfile {
            /* There are resolution issues on the Jenkins server for pelux.io */
            // This is IP is hardcoded until the domain is updated to "New Jenkins"
            args "--add-host=pelux.io:172.30.23.33"
        }
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
               sh "bundle exec htmlproofer --url-ignore \"/pelux.io/downloads/\" _site"
           }
        }

        stage('Archive') {
            steps {
                // Store the artifacts of the entire build
                archiveArtifacts artifacts: '_site/**/*', fingerprint: true
            }
        }
    }
}
