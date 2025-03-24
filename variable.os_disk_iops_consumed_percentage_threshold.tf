variable "os_disk_iops_consumed_percentage_threshold" {
  type        = number
  description = "The threshold for the os disk iops consumed percentage metric. This is the percentage of iops that are consumed by the os disk. The default is 95."
  default     = 95
}
