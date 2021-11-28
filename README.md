# JenkinsConfigAsCode
Create jenkins instance with required plugins installed and configurations updated and ready to go

## Dockerfile
Contains instruction to build docker image with plugins installed and apply config yaml using to configure global configurations

## config.yaml
Contains configurations to be updated in Jenkins instance. Used by jenkins configuration as code plugin. 
Also creates the pipeline job using DSL

## plugins.txt
Contains list of plugins to be installed

## BuildPipelineDSL
Job DSL for creating pipeline job.

### build docker image 
docker build -t jenkins:myjenkins .

### create kubernetes deployment (add env variable in yaml later)
kubectl create deployment myjenkins --image=jenkins:myjenkins

### direnty run image in docker
 docker run --name jenkins --rm -p 8080:8080 --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password jenkins:myjenkins

## Operational Consideration
For operational stabilty its good to run jenkins with multiple master nodes.
And have agents asssigned dyamically running in containerized environment.