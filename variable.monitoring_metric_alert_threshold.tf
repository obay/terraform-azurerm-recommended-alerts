variable "monitoring_metric_alert_threshold" {
  type        = number
  description = "The threshold for the metric alert. This is the value that will trigger the alert. The default is 200000000000."
  default     = 200000000000
}
