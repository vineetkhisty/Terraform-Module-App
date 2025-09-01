module "dev-infra" {
  source = "./Infra-app"
  env = "dev"
  bucket_name = "infra-app-bucket"
  instance_count = 1
  instance_type = "t2.micro"
  ec2_ami_id = "ami-05803413c51f242b7" # Ubuntu Server 20.04 LTS (HVM), SSD Volume Type
  hash_key = "LockID"
}

