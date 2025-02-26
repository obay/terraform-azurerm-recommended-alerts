variable "monitoring_scope" {
  type        = string
  description = "The ID of the scope being alerted on. This can be a virtual machine or virtual machine scale set ID which will be alerted on. It can also be a resource group ID which will alert on all resources in the resource group."
}
