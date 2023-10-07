pipeline{

    agent any

    stages{

        stage('Init'){
            steps{

                sh'''

                ls -lnt
                pwd
                dir(terraformjenkins)
                terraform init
                echo "init stage"

                '''
            }
        }
         stage('Plan'){
            steps{

                sh'''
                 ls -lnt
                pwd
                dir(terraformjenkins)                
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
    


