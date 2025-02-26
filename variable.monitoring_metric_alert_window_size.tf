variable "monitoring_metric_alert_window_size" {
  type        = number
  description = "The window size of the metric alert. This is the time period over which the metric is evaluated. The default is 5 minutes."
  default     = 5
}
