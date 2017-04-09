#!/bin/sh

StackName=IceCream

aws cloudformation delete-stack --stack-name ${StackName}
