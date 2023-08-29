
variable "ingress" {
  type = any
  default = {
    ssh = {
      port = 22
    },
    http = {
      description = "TLS from VPC"
      port        = 80

    }
  }
}