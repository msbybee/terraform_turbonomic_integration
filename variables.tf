variable "aws_region_name" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "aws_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
