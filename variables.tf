variable "name" {}

variable "rg" {
  type = object({
    name     = string
    location = string
  })
}

variable "priority_offset" {
  default = 100
  nullable = false
}

variable "network_rules" {
  type = map(object({
    protocol                   = optional(string, "Tcp")
    direction                  = optional(string, "Inbound")
    access                     = optional(string, "Allow")
    source_port_range          = optional(string, "*")
    destination_port_range     = optional(string, "*")
    source_address_prefix      = optional(string, "*")
    destination_address_prefix = optional(string, "*")
  }))
  default = {}
  nullable = false
}