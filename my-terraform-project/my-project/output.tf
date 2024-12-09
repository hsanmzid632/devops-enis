output "deployer_key_s3_uri" {
  description = "S3 URI of the deployer key file"
  value       = "s3://${aws_s3_object.private_key_object.bucket}/${aws_s3_object.private_key_object.key}"
}

output "rds_endpoint" {
  description = "The endpoint of the RDS database"
  value = {
    endpoint       = aws_db_instance.mydb.endpoint
    username       = aws_db_instance.mydb.username
    db_instance_id = aws_db_instance.mydb.id
  }
}
