variable "rds_count" {
  description = "number of instances"
}

variable "identifier" {
  description = "identifier"
}

variable "rds_availability_zone" {
  description = "rds_availability_zone"
}

variable "db_subnet_group_name" {
  description = "db_subnet_group_name"
}

variable "rds_vpc_security_group_ids" {
  type    = "list"
  description = "RDS vpc_security_group_ids"
}

variable "engine" {
  description = "engine"
}

variable "engine_version" {
  description = "engine_version"
}

variable "instance_class" {
  description = "instance_class"
}

variable "storage_type" {
  description = "storage_type"
}

variable "allocated_storage" {
  description = "RDS allocated storage"
}

variable "name" {
  description = "name"
}

variable "username" {
  description = "username"
}

variable "password" {
  description = "password"
}

variable "port" {
  description = "DB port"
}


variable "rds_tag_name" {
  description = "rds_tag_name"
}

variable "parameter_group_name" {
  description = "parameter_group_name"
}
  
variable "option_group_name" {
  description = "option_group_name"
}
