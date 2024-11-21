variable "policy_description" {
  type = string
  description = "Description for policy string"
  default = "Default input from variables file"
}

variable "policy_count" {
  type = number
  description = "Number of policies to create"
  default = 0
}

variable "allow_s3_listing" {
  type = bool
  description = "Allow listing of S3 buckets"
}
variable "action_list" {
  type = list(string)
  description = "Add list of actions"
}