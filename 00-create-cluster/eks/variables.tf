variable "region" {
  type        = any
  default     = "us-west-2"
  description = "value of the region where the resources will be created"
}

variable "environments" {
  type = any
  description = "The environment configuration"
}
