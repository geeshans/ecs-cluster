# Deployment to ECS Cluster

This is a deployment plan to a public cloud production environment. 

## Requirements

* An AWS account and an IAM user with permissions to create AWS resources

* Terraform v0.11.7
- provider.aws v1.27.0
- provider.template v1.0.0
- provider.tls v1.1.0

NOTE - You can either export the IAM credentials as below or use an IAM Role if running from an EC2 instance

## Usage

Export IAM credentials as environment variables

Build the webserver docker images
```
$ cd ecs-cluster/webserver
$ docker build -t webserver .
```

Build the appserver docker images
```
$ cd ecs-cluster/appserver
$ docker build -t helloworld .
```

Create Repositories in AWS
```
$ aws ecr create-repository --repository-name webserver
$ aws ecr create-repository --repository-name helloworld
```

Push the docker images to ECR (https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-push-ecr-image.html)

Update the variables.tf file with desired values including the image URLS


Execute the terraform script
```
$ terraform apply
```

You can access the web application using `webserver_alb_dns` outpu at the end
```
Outputs:

webserver_alb_dns = tf-ecs-task-alb-420573605.us-east-1.elb.amazonaws.com
```

## Architecture Diagram

![alt text](https://raw.github.com/geeshans/ecs-cluster/blob/master/ecs%20deployment.jpg)

