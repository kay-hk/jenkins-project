variable "region" {
  description = "The Region To Create The Resources In."
  type        = string
  default     = "eu-west-2"
}

variable "aws_access_key" {
  description = "value"
  type = string
}

variable "aws_secret_access_key" {
  description = "value"
  type = string
}

variable "instance_type" {
  description = "value"
  type = string
  default = "t2.micro"
}
variable "key_pair" {
  description = "value"
  type = string
}
variable "key_pair_name" {
  description = "value"
  type = string
}
variable "jenkins_image" {
  description = "value"
  type = string
}
variable "jenkins_container_name" {
  description = "value"
  type = string
  default = "jenkins_container"
}
variable "jenkins_admin_id" {
  description = "value"
  type = string
}
variable "jenkins_admin_password" {
  description = "value"
  type = string
}