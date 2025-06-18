variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-southeast-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-09e6f87a47903347c" 
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "db_name" {
  description = "The name of the RDS database"
  type        = string
  default     = "mydb"
}

variable "db_username" {
  description = "Master username for the RDS database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Master password for the RDS database"
  type        = string
  default     = "admin12345"
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS instance type"
  type        = string
  default     = "db.t3.micro" 
}

variable "db_allocated_storage" {
  description = "Storage size in GB for RDS"
  type        = number
  default     = 20
}

