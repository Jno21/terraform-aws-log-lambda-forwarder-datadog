# Test VPC configuration of the Datadog Forwarder module
provider "aws" {
  region = "us-east-1"
}

run "manage_secretsmanager" {
  module {
    source = "./tests/manage_secretsmanager"
  }
}
