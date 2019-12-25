# This is the varaible file for the RDS 

variable "rds_count" {
  default = "1"
}

variable "identifier" {
  default = "rdstest"
}

variable "db_subnet_group_name" {
  default = "rds-subnetgroup"
}

variable "rds_vpc_security_group_ids" {
  type    = "list"
  default = ["sg-0993941a866f31faa"]
}

variable "engine" {
  default = "mysql"
}

variable "engine_version" {
  default = "5.7.22"
}

variable "instance_class" {
  default = "db.t2.micro"
}

variable "storage_type" {
  default = "gp2"
}

variable "allocated_storage" {
  default = "20"
}

variable "rds_name" {
  default = "rdstest"
}

variable "username" {
  default = "admin"
}

variable "password" {
  default = "admin"
}

variable "port" {
  default = "1500"
}

variable "parameter_group_name" {
  default = "default.mysql5.7"
}
  
variable "option_group_name" {
  default = "default:mysql-5-7"
}

