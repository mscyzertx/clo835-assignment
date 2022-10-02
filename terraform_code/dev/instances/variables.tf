# Instance type
variable "instance_type" {
  default = {
    "prod"    = "t3.medium"
    "test"    = "t3.micro"
    "staging" = "t2.micro"
    "dev"     = "t2.micro"
  }
  description = "Type of the instance"
  type        = map(string)
}

variable "ecr_repo" {
  default     = ["app", "db"]
  type        = set(string)
  description = "Amazon ECR Repository Names"
}

# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "Deployment Environment"
}




