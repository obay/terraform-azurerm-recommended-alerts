variable "percentage_cpu_threshold" {
  type        = number
  description = "The threshold for the percentage cpu metric. This is the percentage of cpu that is consumed by the virtual machine. The default is 80."
  default     = 80
}
