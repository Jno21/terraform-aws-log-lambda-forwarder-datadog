variable "dd_api_key_secret_arn" {
  description = "The ARN of the secret storing the Datadog API key, if you already have it stored in Secrets Manager. You must store the secret as a plaintext, rather than a key-value pair."
  type        = string
  sensitive   = true
}

variable "datadog_site" {
  description = "Datadog site"
  type        = string
  default     = "datadoghq.com"
}

variable "function_name" {
  description = "Name of the Datadog forwarder function"
  type        = string
  default     = "datadog-forwarder-multi-region"
}
