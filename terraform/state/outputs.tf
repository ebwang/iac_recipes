output "s3_bucket_state_arn" {
  value       = aws_s3_bucket.tf_state.arn
  description = "The ARN of the S3 bucket"
}
output "dynamo_lock_table" {
  value       = aws_dynamodb_table.tf_locks.name
  description = "The name of the DynamoDB table"
}