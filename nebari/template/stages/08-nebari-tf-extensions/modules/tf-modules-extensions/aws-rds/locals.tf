locals {

  rds_create_db_instance = lookup(var.configuration, "rds_create_db_instance", false)
  rds_create_db_option_group = lookup(var.configuration, "rds_create_db_option_group", false)
  rds_create_db_parameter_group = lookup(var.configuration, "rds_create_db_parameter_group", false)
  rds_create_db_subnet_group = lookup(var.configuration, "rds_create_db_subnet_group", false)
  rds_create_monitoring_role = lookup(var.configuration, "rds_create_monitoring_role", false)

  rds_identifier = lookup(var.configuration, "rds_identifier")
  rds_engine = lookup(var.configuration, "rds_engine")
  rds_engine_version = lookup(var.configuration, "rds_engine_version")
  rds_instance_class = lookup(var.configuration, "rds_instance_class")
  rds_allocated_storage = lookup(var.configuration, "rds_allocated_storage")
  rds_tags = lookup(var.configuration, "rds_tags","")
  rds_db_name = lookup(var.configuration, "rds_db_name")
  rds_username = lookup(var.configuration, "rds_username")
  
  rds_subnet_ids = lookup(var.configuration, "rds_subnet_ids","")

  rds_family = lookup(var.configuration, "rds_family")
  rds_major_engine_version = lookup(var.configuration, "rds_major_engine_version")

}