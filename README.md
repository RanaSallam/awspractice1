# Terraform Scripts for awspractice1
These terraform scripts are aimed to create:

1- Tomcat EC2

2- Jenkins EC2 

3- 1 RDS -> for Tomcat instance


# How to Run Terraform Scripts
After providing the necessary variables run the following commands:

To initialize a working directory containing Terraform configuration files:
terraform init
To download and update modules mentioned in the root module. In our case to use rds module:
terraform get
To create an execution plan:
terraform plan
To apply the changes:
terraform apply
Outputs:

# After the infrastructure is provesioned successfully, the following outputs will be displayed on console:

1- Tomcat Private IP:
Tomcat_IP = xx.xx.xx.xx

2- Jenkins Private IP:
Jenkins_IP = xx.xx.xx.xx

3- RDSs Endpoints:
  RDS_Endpoints = endpoint.rds.amazonaws.com:port
