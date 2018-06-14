# Overview
Install, configure and manage the Bridge Worker Platform infrastructure


## Create resources

1. Deploy the infrastructure to AWS.  The stack-name parameter should be $STACK_NAME-$ENVIRONMENT (example: bridgeworker-develop).

```
pip install sceptre
export TRAVIS_BRANCH=develop
source env_vars && source env_vars.secret
sceptre --var "profile=bridge.dev.travis" --var "region=us-east-1" launch-env develop
```

The above should setup infra resources for the app.  Once the infrastructure for app has been setup
you can access and view the resources using the AWS console[1].


## Continuous Integration
We have configured Travis to deploy CF template updates.  Travis deploys using
[sceptre](https://sceptre.cloudreach.com/latest/about.html)


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
