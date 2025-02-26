resource "azurerm_monitor_metric_alert" "os_disk_iops_consumed_percentage" {
  name                = "OS Disk IOPS Consumed Percentage - ${var.vmname}"
  resource_group_name = var.monitoring_resource_group_name
  scopes              = [var.monitoring_scope]
  description         = "OS Disk IOPS Consumed Percentage - ${var.vmname}"
  severity            = var.monitoring_metric_alert_severity
  frequency           = "PT${var.monitoring_metric_alert_frequency}M"
  window_size         = "PT${var.monitoring_metric_alert_window_size}M"
  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "OS Disk IOPS Consumed Percentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 95
  }
  action {
    action_group_id = var.monitoring_action_group_id
  }
}
