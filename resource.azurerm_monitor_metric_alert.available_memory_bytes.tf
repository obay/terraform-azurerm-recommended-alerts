resource "azurerm_monitor_metric_alert" "available_memory_bytes" {
  name                = "Available Memory Bytes - ${var.vmname}"
  resource_group_name = var.monitoring_resource_group_name
  scopes              = [var.monitoring_linux_virtual_machine_id]
  description         = "Available Memory Bytes - ${var.vmname}"
  severity            = 3
  frequency           = "PT${var.monitoring_metric_alert_frequency}M"
  window_size         = "PT${var.monitoring_metric_alert_window_size}M"
  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Available Memory Bytes"
    aggregation      = "Average"
    operator         = "LessThan"
    threshold        = 1000000000
  }
  action {
    action_group_id = var.monitoring_action_group_id
  }

  tags = {
    alertRuleCreatedWithAlertsRecommendations = "true"
  }
}
