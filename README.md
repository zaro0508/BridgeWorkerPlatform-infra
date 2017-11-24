# Overview
Install, configure and manage the Bridge Worker Platform infrastructure


## Create resources


```
aws --profile aws.admin.user --region us-east-1 cloudformation \
  create-stack --stack-name foo-develop --capabilities CAPABILITY_NAMED_IAM \
  --on-failure DELETE --template-body file://cf_templates/eb_app.yml \
  --parameters ParameterKey=EC2InstanceType,ParameterValue=t2.micro \
  ..
  .. [Rest of the parameters from update_cf_stack.sh]
```

The above should setup infra resources for the app.  Once the infrastructure for app has been setup
you can access and view the resources using the AWS console[1].


## Continuous Integration
We have configured Travis to deploy CF template updates.  Travis does this by running update_cf_stack.sh on every
change.


# Contributions

## Issues
* https://sagebionetworks.jira.com/projects/BRIDGE

## Builds
* https://travis-ci.org/Sage-Bionetworks/Bridge-Exporter-infra

## Secrets

We use git-crypt[2] to hide secrets.  Access to secrets is tightly controlled.  You will be required to
have your own GPG key[3] and you must request access by a maintainer of this project.



# References

[1] https://AWS-account-ID-or-alias.signin.aws.amazon.com/console

[2] https://github.com/AGWA/git-crypt

[3] https://help.github.com/articles/generating-a-new-gpg-key
