pipeline{

    agent any
options{
    ansiColor(xterm)
}

    stages{
         stage('Git Checkout'){
            steps{
                git branch: 'master', url: 'https://github.com/Saikumar586/jenkinsterraform.git'
        }

        stage('Init'){
            steps{

                sh'''

                ls -lnt
                pwd
                dir('terraformjenkins')
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
                dir('terraformjenkins')
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

}
    


