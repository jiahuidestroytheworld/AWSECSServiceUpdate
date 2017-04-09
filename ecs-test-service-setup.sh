#!/bin/sh

StackName=IceCream
ClusterSize=3
InstanceType=t2.micro
DesiredCount=2
DockerImage=405701278213.dkr.ecr.us-east-1.amazonaws.com/helloworld
Reversion=latest
ContainerPort=8008

aws cloudformation create-stack --stack-name ${StackName} --template-body file://ecs-test-service-setup.yaml --capabilities CAPABILITY_NAMED_IAM --parameters ParameterKey=ClusterSize,ParameterValue=${ClusterSize} ParameterKey=InstanceType,ParameterValue=${InstanceType} ParameterKey=DesiredCount,ParameterValue=${DesiredCount} ParameterKey=DockerImage,ParameterValue=${DockerImage} ParameterKey=Reversion,ParameterValue=${Reversion} ParameterKey=ContainerPort,ParameterValue=${ContainerPort}
