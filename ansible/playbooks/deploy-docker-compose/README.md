# Playbook deploy-docker-compose

Guys i usually do my deployments with jenkins using this script that change the docker-tag of docker-compose.
The docker-compose needs to pre-exist before the scripts run docker-compose-{{ application }}.yaml, and i want to program a condition to view if exist.
There are some files that are mounted inside of containers of docker-compose(The files which is copied)
So all the environments are passed by Jenkins pipe. and i'm going to share soon.
I used the ec2 inventory to limit some instances but you can pass with file.

## Authors
- [@ebwang](https://github.com/ebwang)

## Requirements
amazon.aws.aws_ec2 inventory – EC2 inventory source

## Environment Variables
- application
- docker_tag
- uri_health_check
- port_monitoring
- ansible_host
- env

## Usage/Examples
ansible-playbook deploy-docker-compose.yaml --private-key <some-key> --ssh-extra-args '-o StrictHostKeyChecking=no' --user=<some-user> -e application=tomcat -e env=dev -e docker_tag=1.0 -e port_monitoring=8080 -e 'uri_health_check=/healthcheck'
