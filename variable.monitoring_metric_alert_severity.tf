variable "monitoring_metric_alert_severity" {
  type        = number
  description = "The severity of the metric alert. The default is 3 which is warning. Other options are 0 (critical), 1 (error), and 2 (informational)."
  default     = 3
}
