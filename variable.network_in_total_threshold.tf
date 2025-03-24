variable "network_in_total_threshold" {
  type        = number
  description = "The threshold for the network in total metric. This is the amount of network in that is consumed by the virtual machine. The default is 500000000000 bytes."
  default     = 500000000000
}
