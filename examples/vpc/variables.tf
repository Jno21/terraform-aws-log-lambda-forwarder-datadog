variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

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
  default     = "datadog-forwarder-vpc"
}

variable "memory_size" {
  description = "Memory size for the Lambda function"
  type        = number
  default     = 1024
}

variable "timeout" {
  description = "Timeout for the Lambda function"
  type        = number
  default     = 120
}


variable "proxy_url" {
  description = "HTTP proxy URL (optional)"
  type        = string
  default     = null
}

variable "no_proxy" {
  description = "Comma-separated list of domains to exclude from proxy"
  type        = string
  default     = null
}

variable "dd_tags" {
  description = "Tags to apply to forwarded logs"
  type        = string
  default     = "env:production,deployment:vpc,purpose:example"
}
