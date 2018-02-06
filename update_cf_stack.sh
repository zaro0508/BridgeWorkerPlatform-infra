#!/usr/bin/env bash

# deploy with evaluated vars
aws cloudformation update-stack \
--stack-name $STACK_NAME \
--capabilities CAPABILITY_NAMED_IAM \
--template-body file://cf_templates/eb_app.yml \
--parameters \
ParameterKey=AwsDefaultVpcId,ParameterValue="$AwsDefaultVpcId" \
ParameterKey=AwsSnsNotificationEndpoint,ParameterValue="$AwsSnsNotificationEndpoint" \
ParameterKey=BridgeEnv,ParameterValue="$BridgeEnv" \
ParameterKey=BridgeUser,ParameterValue="$BridgeUser" \
ParameterKey=BridgeWorkerEmail,ParameterValue="$BridgeWorkerEmail" \
ParameterKey=BridgeWorkerStudy,ParameterValue="$BridgeWorkerStudy" \
ParameterKey=BridgeWorkerPassword,ParameterValue="$BridgeWorkerPassword" \
ParameterKey=EC2InstanceType,ParameterValue="t2.micro" \
ParameterKey=Env,ParameterValue="$Env" \
ParameterKey=AwsSolutionStackName,ParameterValue="$AwsSolutionStackName" \
ParameterKey=NewRelicAppName,ParameterValue="$STACK_NAME" \
ParameterKey=NewRelicLicenseKey,ParameterValue="$NewRelicLicenseKey" \
ParameterKey=SynapseApiKey,ParameterValue="$SynapseApiKey" \
ParameterKey=SynapseUser,ParameterValue="$SynapseUser" \
ParameterKey=UserDataBucket,ParameterValue="$UserDataBucket"
