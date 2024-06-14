variable "role_name_suffix" {
  type        = string
  description = "RSC role name suffix."
}

variable "rsc_cloud_account_ids" {
  type        = set(string)
  description = "IDs of RSC cloud accounts to administer."
}
