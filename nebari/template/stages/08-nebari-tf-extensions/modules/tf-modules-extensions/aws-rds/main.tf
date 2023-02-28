module "aws-rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "5.6.0"

  # Disable creation of RDS instance(s)
  create_db_instance = local.rds_create_db_instance

  # Disable creation of option group - provide an option group or default AWS default
  create_db_option_group = local.rds_create_db_option_group

  # Disable creation of parameter group - provide a parameter group or default to AWS default
  create_db_parameter_group = local.rds_create_db_parameter_group

  # Enable creation of subnet group (disabled by default)
  create_db_subnet_group = local.rds_create_db_subnet_group

  # Enable creation of monitoring IAM role
  create_monitoring_role = local.rds_create_monitoring_role

  identifier = local.rds_identifier

  engine            = local.rds_engine
  engine_version    = local.rds_engine_version
  instance_class    = local.rds_instance_class
  allocated_storage = local.rds_allocated_storage

  tags = tomap(jsondecode(local.rds_tags))

  db_name  = local.rds_db_name
  username = local.rds_username

  # DB subnet group
  subnet_ids = tolist(jsondecode(local.rds_subnet_ids))

  # DB parameter group
  family = local.rds_family

  # DB option group
  major_engine_version = local.rds_major_engine_version

}