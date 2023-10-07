pipeline{

    agent any
option{
    ansicolor(xterm)
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
                dir('H:\devopstools\repos\terraformjenkins')
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
                dir('H:\devopstools\repos\terraformjenkins')
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
    


