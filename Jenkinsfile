pipeline {
    agent {
        dockerfile {
            /* There are resolution issues on the Jenkins server for pelux.io */

            /* This domain is temporarily changed to pelux.xyz until the pelux.io is
               changed to point to the "New Jenkins" server */
            args "--add-host=pelux.xyz:${env.JENKINS_IP}"
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
                sh "bundle exec htmlproofer _site"
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
