variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}
variable "web_count" {
  description = "Number of Web Containers in a given AWS region"
  default     = "2"
}
variable "app_count" {
  description = "Number of Application Containers in a given AWS region"
  default     = "2"
}

variable "app_fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units) to Application"
  default     = "256"
}
variable "web_port" {
  description = "Port of the Web container"
  default     = "80"
}

variable "app_port" {
  description = "Port of the Application container"
  default     = "8080"
}

variable "app_fargate_memory" {
  description = "Fargate instance memory to provision (in MiB) to Application"
  default     = "512"
}


variable "web_fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units) to Web"
  default     = "256"
}

variable "web_fargate_memory" {
  description = "Fargate instance memory to provision (in MiB) to Web"
  default     = "512"
}
