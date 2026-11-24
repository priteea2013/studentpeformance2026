## Create a git repository using command line
1. git init
2. git add README.md
3. git commit -m "first commit"
4. git branch -M main
5. git remote add origin https://github.com/priteea2013/studentpeformance2026
# If you get remote origin already exists, Run the below instead of 5.
# git remote set-url origin https://github.com/priteea2013/studentpeformance2026.git
6. git push -u origin main

## End to End Machine Learning Project

1. Docker Build checked
2. Github Workflow
3. Iam User In AWS

## Docker Setup In EC2 commands to be Executed

#optinal

sudo apt-get update -y

sudo apt-get upgrade

#required

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

sudo usermod -aG docker ubuntu

newgrp docker

## Configure EC2 as self-hosted runner:

## Setup github secrets:

AWS_ACCESS_KEY_ID= 

AWS_SECRET_ACCESS_KEY=

AWS_REGION = ap-southeast-1

AWS_ECR_LOGIN_URI = demo>>  548597179073.dkr.ecr.ap-southeast-1.amazonaws.com

ECR_REPOSITORY_NAME = studentperformance
# studentpeformance2026
