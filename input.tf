variable "name" {
  type        = string
  description = "Name of NTP Policy"
  validation {
    # If the condition evaluates to false, Terraform produces an error message.
    condition     = var.name != ""
    error_message = "Name can't be empty!"
  }
  validation {
    condition     = substr(var.name, 0, 5) == "Demo-"
    error_message = "Name should start with \"Demo-\"."
  }
  validation {
    condition     = length(var.name) > 1 && length(var.name) <= 64
    error_message = "The name must be between 1 and 64 characters."
  }
  validation {
    condition     = regex("[0-9A-Za-z\\-_\\.]+", var.name) == var.name
    error_message = "The number should include alphanumeric characters, allowing special characters '-' '_' '.' ."
  }
}

variable "description" {
  type        = string
  description = "Description of NTP Policy"
}

variable "enabled" {
  type        = bool
  description = "Policy Enabled or Not"
}

variable "ntp_servers" {
  type        = list(string)
  description = "List of NTP Servers"
}

variable "timezone" {
  type        = string
  description = "Timezone"
}

variable "org_moid" {
  type        = string
  description = "Moid of the Organization"
}

variable "tags" {
  type        = list(map(string))
  description = "Policy Tags"
}