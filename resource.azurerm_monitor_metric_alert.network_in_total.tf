resource "azurerm_monitor_metric_alert" "network_in_total" {
  name                = "Network In Total - ${var.vmname}"
  resource_group_name = var.monitoring_resource_group_name
  scopes              = [var.monitoring_scope]
  description         = "Network In Total - ${var.vmname}"
  severity            = var.monitoring_metric_alert_severity
  frequency           = "PT${var.monitoring_metric_alert_frequency}M"
  window_size         = "PT${var.monitoring_metric_alert_window_size}M"
  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Network In Total"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.network_in_total_threshold
  }
  action {
    action_group_id = var.monitoring_action_group_id
  }

  tags = {
    alertRuleCreatedWithAlertsRecommendations = "true"
  }
}
