variable "key_name" {
	default="Instance"
}

variable "environmentName" {
  default = "tomcat"
}

variable "environmentName2" {
  default = "jenkins"
}

variable "tomcat_ami" {
  default = "ami-00068cd7555f543d5"
}

variable "tomcat_InstType" {
  default = "t2.micro"
}

variable "tomcat_appsubnet" {
  default = "subnet-0b284b2d5ee4d7036"
}

variable "tomcat_vpc_security_group_ids" {
  default = ["sg-0951612eb1b5e17ed"]
}

variable "tomcat_availability_zone" {
  default = "us-east-1a"
}

variable "tomcat_root_volume_type" {
  default = "gp2"
}

variable "tomcat_root_volume_size" {
  default = "10"
}


variable "jenkins_ami" {
  default = "ami-00068cd7555f543d5"
}

variable "jenkins_InstType" {
  default = "t2.micro"
}

variable "jenkins_appsubnet" {
  default = "subnet-0198b7bd242a7c5d8"
}

variable "jenkins_vpc_security_group_ids" {
  default = ["sg-07acd831dc5823d88"]
}

variable "jenkins_availability_zone" {
  default = "us-east-1a"
}

variable "jenkins_root_volume_type" {
  default = "gp2"
}

variable "jenkins_root_volume_size" {
  default = "10"
}
