
#frankfurt

provider "aws" {
  access_key = "***"
  secret_key = "***"
  region = "us-east-1"
}

# EC2.
resource "aws_instance" "tomcat" {
  ami                    = "${var.tomcat_ami}"
  instance_type          = "${var.tomcat_InstType}"
  subnet_id              = "${var.tomcat_appsubnet}"
  vpc_security_group_ids = "${var.tomcat_vpc_security_group_ids}"
  availability_zone      = "${var.tomcat_availability_zone}"
  
  key_name = "${var.key_name}"
  
  root_block_device {
    volume_type           = "${var.tomcat_root_volume_type}"
    volume_size           = "${var.tomcat_root_volume_size}"
    delete_on_termination = "true"
  }

  tags = {
    Name = "${var.environmentName}"
  }

  volume_tags = {
    Name = "${var.environmentName}"
  }
}

resource "aws_instance" "jenkins" {
  ami                    = "${var.jenkins_ami}"
  instance_type          = "${var.jenkins_InstType}"
  subnet_id              = "${var.jenkins_appsubnet}"
  vpc_security_group_ids = "${var.jenkins_vpc_security_group_ids}"
  availability_zone      = "${var.jenkins_availability_zone}"
  
  key_name = "${var.key_name}"
  
  root_block_device {
    volume_type           = "${var.jenkins_root_volume_type}"
    volume_size           = "${var.jenkins_root_volume_size}"
    delete_on_termination = "true"
  }

  tags = {
    Name = "${var.environmentName2}"
  }

  volume_tags = {
    Name = "${var.environmentName2}"
  }
}

# RDS
module "rds" {
  source = "./rds"

  rds_count          = "${var.rds_count}"
  identifier         = "${var.identifier}"
  
  rds_availability_zone      = "${var.tomcat_availability_zone}"
  
  db_subnet_group_name        = "${var.db_subnet_group_name}"
  rds_vpc_security_group_ids  = "${var.rds_vpc_security_group_ids}"

  engine             = "${var.engine}"
  engine_version     = "${var.engine_version}"
  instance_class     = "${var.instance_class}"
  
  storage_type       = "${var.storage_type}"
  allocated_storage  = "${var.allocated_storage}"
  
  name               = "${var.rds_name}" 
  username           = "${var.username}"
  password           = "${var.password}"
  port               = "${var.port}"
    
  parameter_group_name = "${var.parameter_group_name}"
  option_group_name    = "${var.option_group_name}"
  
  rds_tag_name         = "${var.rds_name}"
}


### Outputs
output "Tomcat_IP" {
  value = "${aws_instance.tomcat.private_ip}"
}

output "Jenkins_IP" {
  value = "${aws_instance.jenkins.private_ip}"
}
output "RDS_Endpoints" {
  value = "${module.rds.RDS_endpoint}"
}
