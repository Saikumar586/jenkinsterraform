pipeline{

    agent any

    stages{

        stage('Init'){
            steps{

                ssh'''

                ls -lnt
                pwd
                cd /terraformjenkins
                terraform init
                echo "init stage"

                '''
            }
        }
         stage('Plan'){
            steps{

                ssh'''
                 ls -lnt
                pwd
                cd /terraformjenkins
                terraform plan
                echo "plan stage"

                '''
            }
         }
        //  stage('deploye'){
        //     steps{

        //         ssh '''

        //         echo "Deploy"

        //         '''
            }
        }
    


