#!/bin/bash

if [ $# != 1 ]; then
    echo "Usage: AWS_PROFILE=<aws-profile> ./$0 <region>"
    exit 1
fi

aws ec2 describe-availability-zones --region "$1" | jq -r '.AvailabilityZones[] | .ZoneId + "=" + .ZoneName'