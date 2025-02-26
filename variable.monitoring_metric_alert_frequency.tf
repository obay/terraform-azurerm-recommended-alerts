variable "monitoring_metric_alert_frequency" {
  type        = number
  description = "The frequency of the metric alert. This is the time period over which the metric is evaluated. The default is 5 minutes."
  default     = 5
}
