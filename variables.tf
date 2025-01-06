variable "aws_region" {
  description   = "To deploy the instance in aws region"
  type          = string
  default       = "ap-south-1"
}

variable "tag_sg_name" {
    description = "security group tag name"
    type        = string
    default     = "sgtag" 
}

variable "ami_id" {
    description = "ami ID for amazon linux machine"
    type        = string
    default     = "ami-09b0a86a2c84101e1" 
}

variable "instance_type" {
    description = "instance type"
    type        = string
    default     = "t2.medium"   
}

variable "key_name" {
    description = "key pair"
    type        = string
    default     = "santhukey" 
}

variable "tag_instance_name" {
    description = "instance_name"
    type        = string
    default     = "javawebapp" 
}