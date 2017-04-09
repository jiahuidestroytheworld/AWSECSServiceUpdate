#!/bin/sh

StackName=IceCream
ClusterSize=3
InstanceType=t2.micro


aws cloudformation create-stack --stack-name ${StackName} --template-body file://ecs-cluster-setup.yaml --capabilities CAPABILITY_NAMED_IAM --parameters ParameterKey=ClusterSize,ParameterValue=${ClusterSize} ParameterKey=InstanceType,ParameterValue=${InstanceType} 
