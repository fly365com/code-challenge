#!/bin/bash

echo "$GIT_BRANCH"
if [ "$GIT_BRANCH" == "origin/master" ]
	then
		#deploy on master
fi

if [ "$GIT_BRANCH" == "origin/dev" ]
	then
        #workDir
        cd DevOps-challenge
        #build app + test
        docker build -f Dockerfile -t eslam14/fly365:PythonApp-$BUILD_NUMBER .
        #push to dockerhub
        docker push eslam14/fly365:PythonApp-$BUILD_NUMBER
        #deploy new image
        kubectl set image deployment/hello-python hello-python=eslam14/fly365:PythonApp-$BUILD_NUMBER
		#kubectl apply -f pythonDeployment.yaml     
     else
        echo "the branch is not spcified"
        
fi
