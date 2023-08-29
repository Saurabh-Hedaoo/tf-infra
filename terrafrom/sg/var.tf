variable "vpc_id" {
  type = string
}
variable "project" {
}
variable "env" {}

variable "networks" {} 
variable "ingress" {
  type = any
  default = {
    ssh = {
      port = 22
    },
    http = {
      description = "TLS from VPC"
      port        = 80
    },
    https = {
      description = "TLS from VPC"
      port        = 443
    }
  }
}