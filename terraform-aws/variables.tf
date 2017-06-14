### MANDATORY ###
variable "es_cluster" {
  description = "Name of the elasticsearch cluster, used in node discovery"
}

variable "aws_region" {
  type = "string"
  default = "us-east-1"
}

variable "vpc_cidr" {
  type = "string"
  default = "172.31.0.0/16"
}

variable "vpc_id" {
  description = "VPC ID to create the Elasticsearch cluster in"
  type = "string"
  default = "vpc-5258ee36"
}


variable "vpc_subnets" {
  description = "VPC subnet IDs to create the Elasticsearch cluster in"
  type = "list"
  default = ["subnet-00b1b259", "subnet-604e0905", "subnet-c03394fd"]
}

variable "availability_zones" {
  description = "AWS region to launch servers."
  default = "us-east-1a,us-east-1b,us-east-1d"
}

variable "key_name" {
  description = "Key name to be used with the launched EC2 instances."
  default = "elasticsearch"
}

variable "environment" {
  default = "default"
}

variable "data_instance_type" {
  type = "string"
  default = "t2.medium"
}

variable "master_instance_type" {
  type = "string"
  default = "t2.medium"
}

variable "elasticsearch_volume_size" {
  type = "string"
  default = "20" # gb
}

variable "volume_name" {
  default = "/dev/xvdh"
}

variable "volume_encryption" {
  default = true
}

variable "elasticsearch_data_dir" {
  default = "/opt/elasticsearch/data"
}

variable "elasticsearch_logs_dir" {
  default = "/var/log/elasticsearch"
}

# default elasticsearch heap size
variable "data_heap_size" {
  type = "string"
  default = "2g"
}

variable "master_heap_size" {
  type = "string"
  default = "1g"
}

variable "masters_count" {
  default = "3"
}

variable "datas_count" {
  default = "2"
}

variable "clients_count" {
  default = "1"
}

# the ability to add additional existing security groups. In our case
# we have consul running as agents on the box
variable "additional_security_groups" {
  default = ""
}
