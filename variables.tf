variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "eu-north-1"  
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "myapp"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "Private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "Availability zones for subnets"
  type        = list(string)
  default     = ["eu-north-1a", "eu-north-1b"]
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-042b4708b1d05f512"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ssh_ingress_cidr" {
  description = "Allowed CIDR block for SSH access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "asg_min_size" {
  description = "Minimum number of instances in ASG"
  type        = number
  default     = 2
}

variable "asg_max_size" {
  description = "Maximum number of instances in ASG"
  type        = number
  default     = 4
}

variable "asg_desired_capacity" {
  description = "Desired number of instances in ASG"
  type        = number
  default     = 2
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = "Linux-key-pair"
}

variable "lb_internal" {
  description = "Whether the LB is internal (private)"
  type        = bool
  default     = false
}
variable "health_check_type" {
  description = "Type of health check for ASG (EC2 or ELB)"
  type        = string
  default     = "EC2"
}

variable "app_port" {
  description = "Application port"
  type        = number
  default     = 80
}

variable "web_ingress_ports" {
  description = "Allowed ports for web tier"
  type        = list(number)
  default     = [80, 443]
}