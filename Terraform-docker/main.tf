terraform {
  required_version = ">= 1.4.0"
}

resource "terraform_data" "docker_compose" {
  # Re-run when jenkins_compose.yml changes
  triggers_replace = [
    filemd5("${path.module}/jenkins_compose.yml")
  ]

  # Start containers on apply
  provisioner "local-exec" {
    command     = "docker compose -f jenkins_compose.yml up -d"
    working_dir = path.module
  }

  # Stop and remove containers on destroy
  provisioner "local-exec" {
    when        = destroy
    command     = "docker compose -f jenkins_compose.yml down"
    working_dir = path.module
  }
}