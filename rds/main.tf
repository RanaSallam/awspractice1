# this is the main scritp to create RDSs.

resource "aws_db_instance" "rds" {
 // count                  = "${var.rds_count}"
  identifier             = "${var.identifier}"
  
  availability_zone      = "${var.rds_availability_zone}"
  
  db_subnet_group_name   = "${var.db_subnet_group_name}" 
  vpc_security_group_ids = "${var.rds_vpc_security_group_ids}"
  
  engine                 = "${var.engine}"
  engine_version         = "${var.engine_version}"
  instance_class         = "${var.instance_class}"
  
  storage_type           = "${var.storage_type}"
  allocated_storage      = "${var.allocated_storage}"
  
  name                   = "${var.name}"
  username               = "${var.username}"
  password               = "${var.password}"
  port                   = "${var.port}"
  
  parameter_group_name   = "${var.parameter_group_name}"
  option_group_name      = "${var.option_group_name}"


  apply_immediately               = "true"

  tags = {
    Name = "${var.rds_tag_name}"
  }
  
}

output "RDS_endpoint" {
  value = "${aws_db_instance.rds.endpoint}"
}
