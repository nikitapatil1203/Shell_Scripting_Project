

!#/bin/bash



set -e
set -x


aws s3 ls

aws ec2 describe-instances --query "Reservations[*].Instances[*].InstanceId" --output table

aws iam list-users

aws lambda list-functions






