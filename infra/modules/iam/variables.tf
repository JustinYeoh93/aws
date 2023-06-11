variable "name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "user_policies" {
  type    = any
  default = {}
}
