resource "aws_dynamodb_table" "basic_dynamo_table" {
  
  name         = "${var.env}-dynamo-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.hash_key

  attribute {
    name =  var.hash_key
    type = "S"
  }

  tags = {
    Name        = "${var.env}-dynamo-table"
    Environment = var.env
  }
  
}