provider "datadog" {
  api_url = "https://api.datadoghq.eu"
}

resource "aws_secretsmanager_secret" "dd_api_key" {
  name_prefix = "DatadogAPIKey"

  description = "Datadog API Key"
}

resource "aws_secretsmanager_secret_version" "dd_api_key" {
  secret_id     = aws_secretsmanager_secret.dd_api_key.id
  secret_string = "myapikey"
}

module "datadog_forwarder_secretmanager" {
  source = "../../"

  dd_api_key_secret_arn = aws_secretsmanager_secret.dd_api_key.arn
  dd_site               = "datadoghq.com"
}
