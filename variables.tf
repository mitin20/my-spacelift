variable "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  type        = string
  default     = "kubeconfig.json"
}

variable "replicas" {
  description = "Number of Nginx replicas"
  type        = number
  default     = 2
}
