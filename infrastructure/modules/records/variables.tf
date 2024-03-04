variable "env" {
  description = "Environment name."
  type        = string
}

variable "hosted_zone" {
  description = "hosted zone name."
  type        = string
}

variable "lb_name" {
  type    = string
}

variable "domains" {
  type        = list(string)
  description = "List of domain names for which to create A records"
}