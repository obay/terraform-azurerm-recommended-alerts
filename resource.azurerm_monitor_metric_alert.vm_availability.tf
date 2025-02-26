resource "azurerm_monitor_metric_alert" "vm_availability" {
  name                = "VM Availability - ${var.vmname}"
  resource_group_name = var.monitoring_resource_group_name
  scopes              = [var.monitoring_scope]
  description         = "VM Availability - ${var.vmname}"
  severity            = var.monitoring_metric_alert_severity
  frequency           = "PT${var.monitoring_metric_alert_frequency}M"
  window_size         = "PT${var.monitoring_metric_alert_window_size}M"
  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "VmAvailabilityMetric"
    aggregation      = "Average"
    operator         = "LessThan"
    threshold        = 1
  }
  action {
    action_group_id = var.monitoring_action_group_id
  }
}
