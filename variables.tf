  // Provided at runtime
variable "region" {
  type = string
  default = "eu-west-1"
}

variable "shared_credentials_file" {
  type = string
  default = "~/.aws/credentials"
}

variable "aws_profile" {
  type = string
  default = "default"
}

variable "author" {
  type = string
  default = "Created by Togrul"
}

// Default values

variable "vpc_name" {
  type = string
  description = "VPC name"
  default     = "management"
}

variable "cidr_block" {
  type = string
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  type        = list
  default = ["eu-west-1a","eu-west-1b","eu-west-1c"]
}

variable "public_subnets_count" {
  type = number
  description = "Number of public subnets"
  default = 2
}

variable "private_subnets_count" {
  type = number
  description = "Number of private subnets"
  default = 2
}

variable "bastion_instance_type" {
  type = string
  description = "Bastion instance type"
  default = "t2.micro"
}

variable "jenkins_master_instance_type" {
  type = string
  description = "Jenkins master EC2 instance type"
  default = "t2.large"
}

variable "jenkins_worker_instance_type" {
  type = string
  description = "Jenkins worker EC2 instance type"
  default = "t2.medium"
}

variable "jenkins_username" {
  type = string
  description = "USERNAME"
  default = "USERNAME"  
}

variable "jenkins_password" {
  type = string
  description = "PASSWORD"
  default = "PASSWORD" 
}

variable "jenkins_credentials_id" {
  type = string
  description = "jenkins-slaves"
  default = "jenkins-slaves" 
}


variable "public_key" {
  type = string
  default = "/home/ec2-user/.ssh/id_rsa.pub"
}