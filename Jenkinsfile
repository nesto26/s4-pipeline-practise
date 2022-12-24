pipeline {
	
    agent {
                label ("node1 || node2 || node3 || node4 || node5 || branch || main || jenkins-node || docker-agent || jenkins-docker2 || preproduction || production")
    }
    
    options {
        buildDiscarder(logRotator(numToKeepStr: '2'))
        disableConcurrentBuilds()
        timeout (time: 60, unit: 'MINUTES')
        timestamps()
    }
    
    stages {
        
        stage('Setup parameters') {
            steps {
                script {
                    properties([
                        parameters([
                        
                        choice(
                            choices: ['Dev', 'Sanbox', 'Prod'], 
                            name: 'Environment'
                                 
                                ),


                        string(
                            defaultValue: 'User',
                            name: 'User',
			                description: 'Required to enter your name',
                            trim: true
                            ),
                       
                        string(
                            defaultValue: 'nestor-DB-Tag',
                            name: 'User',
			                description: 'Required to enter your image tag',
                            trim: true
                            ),
                        string(
                            defaultValue: 'nestor-UI-Tag',
                            name: 'User',
			                description: 'Required to enter your image tag',
                            trim: true
                            ),
                        string(
                            defaultValue: 'nestor-WEATHER-Tag',
                            name: 'User',
			                description: 'Required to enter your image tag',
                            trim: true
                            ),
                        string(
                            defaultValue: 'nestor-AUTH-Tag',
                            name: 'User',
			                description: 'Required to enter your image tag',
                            trim: true
                            ),
                       
                       
                        ])
                    ])
                }
            }
    
    
    
        }
       
        stage('Hello') {
            steps {
                sh '''
                ls 
                pwd
                uname -r
                '''
            }
        }
    


  }
 post {
    
    success {
      slackSend (channel: '#development-alerts', color: 'good', message: "The Job was built successfully")
    }

    failure {
      slackSend (channel: '#development-alerts', color: '#FF0000', message: "The Job was not built successfully")
    }
}

	
	
}
