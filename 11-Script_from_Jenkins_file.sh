#!/bin/bash
echo "Hello World"


pipeline{
    agent any
    stages{
        stage("git checkout stage"){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Mahesh-Gontla/Jenkins-Tasks-Udemy.git']])
            }
        }
        stage("script usage"){
            steps{
                sh'''
                chmod +x 11-Script_from_Jenkins_file.sh
                sh 11-Script_from_Jenkins_file.sh
                '''
            }
        }
    }
}
