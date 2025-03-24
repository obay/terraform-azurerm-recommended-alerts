variable "network_out_total_threshold" {
  type        = number
  description = "The threshold for the network out total metric. This is the amount of network out that is consumed by the virtual machine. The default is 200000000000 bytes."
  default     = 200000000000
}
