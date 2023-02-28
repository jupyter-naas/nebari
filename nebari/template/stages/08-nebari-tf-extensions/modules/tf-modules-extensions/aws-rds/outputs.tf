output "rds_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = module.aws-rds.db_instance_arn
}

output "rds_instance_username" {
  description = "The master username for the database"
  value       = module.aws-rds.db_instance_username
  sensitive   = true
}

output "rds_instance_password" {
  description = "The database password (this password may be old, because Terraform doesn't track it after initial creation)"
  value       = module.aws-rds.db_instance_password
  sensitive   = true
}