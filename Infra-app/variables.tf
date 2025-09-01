variable "env" {

    description = "This is used to define the environment"
    type        = string
    
  
}

variable "bucket_name" {

    description = "This is the bucket name for infra-app"
    type        = string
  
}


variable "instance_count" {
  
    description = "This is for number of instances"
    type        = number
}

variable "instance_type" {
  
    description = "This is for instance type"
    type        = string

}

variable "ec2_ami_id" {
  
    description = "This is for ec2 ami id"
    type        = string
  
}

variable "hash_key" {
  
    description = "This is for dynamo db hash key"
    type        = string
}
