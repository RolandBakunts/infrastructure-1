variable "env" {
  description = "Environment name."
  type        = string
}

variable "hosted_zone" {
  description = "hosted zone name."
  type        = string
}

variable "domains" {
  type    = list(string)
  description = "List of domains to create ACM certificates for"
}