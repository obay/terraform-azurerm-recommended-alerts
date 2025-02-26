resource "azurerm_monitor_metric_alert" "percentage_cpu" {
  name                = "Percentage CPU - ${var.vmname}"
  resource_group_name = var.monitoring_resource_group_name
  scopes              = [var.monitoring_scope]
  description         = "Percentage CPU - ${var.vmname}"
  severity            = var.monitoring_metric_alert_severity
  frequency           = "PT${var.monitoring_metric_alert_frequency}M"
  window_size         = "PT${var.monitoring_metric_alert_window_size}M"
  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80
  }
  action {
    action_group_id = var.monitoring_action_group_id
  }
}
