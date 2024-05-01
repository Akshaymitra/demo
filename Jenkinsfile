pipeline {
    agent any

    stages {
        stage("Start") {
            steps {
                // Checkout the main branch of the GitHub repository
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-creds', url: 'https://github.com/Akshaymitra/demo']])

                // Run python3 test.py
                script {
                    sh """ssh -t -t ubuntu@10.160.0.90 << EOF
                            sudo mkdir /home/ubuntu/niceone
                            exit
                            EOF"""
                }
            }
        }

//         stage('Build Docker image') {
//             steps {
//                 script {
//                     // Build the Docker image
//                     sh 'docker build -t utkarshns/jenkins-ts:V1 .'
//                 }
//             }
//         }
        
//         stage('Push Docker image') {
//             steps {
//                 script {
//                    withCredentials([usernamePassword(credentialsId: 'docker-creds', passwordVariable: 'dockerpass', usernameVariable: 'dockeruser')]) {
//                         sh'docker login -u ${dockeruser} -p ${dockerpass}'
// }
//                         sh'docker push utkarshns/jenkins-ts:V1'
                 
//                 }
//             }
//         }
    
        

    }
    
}