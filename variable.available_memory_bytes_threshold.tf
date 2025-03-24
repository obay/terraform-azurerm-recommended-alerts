variable "available_memory_bytes_threshold" {
  type        = number
  description = "The threshold for the available memory bytes metric. This is the amount of memory that is available to the virtual machine. The default is 1000000000 bytes."
  default     = 1000000000
}
