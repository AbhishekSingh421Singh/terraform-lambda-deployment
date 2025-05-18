variable "function_name" {}
variable "image_uri" {}
#variable "role_arn" {}

variable "role_arn" {
  description = "IAM role ARN for Lambda execution"
  type        = string
}