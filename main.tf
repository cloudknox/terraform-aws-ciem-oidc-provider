data "aws_caller_identity" "oidc_provider_account" {}

resource "aws_iam_openid_connect_provider" "ciem_oidc_idp" {
  client_id_list = [
    "api://ciem-aws-oidc-app"
  ]

  thumbprint_list = [
    "626d44e704d1ceabe3bf0d53397464ac8080142c"
  ]

  url = "https://${var.azure_authority_uri}/${var.tenant_id}/"
}

resource "aws_iam_policy" "ciem_oidc_access_policy" {
  name = "ciem-oidc-${var.tenant_id}-assume"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sts:AssumeRole",
          "sts:AssumeRoleWithSAML",
          "sts:GetAccessKeyInfo",
          "sts:GetCallerIdentity",
          "sts:GetFederationToken",
          "sts:GetServiceBearerToken",
          "sts:GetSessionToken",
          "sts:TagSession"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role" "ciem_oidc_role" {
  name = var.ciem_oidc_role_name
  assume_role_policy = templatefile("oidc_assume_role_policy.json", {
    ACCOUNT_ID          = data.aws_caller_identity.oidc_provider_account.account_id,
    AZURE_AUTHORITY_URL = var.azure_authority_uri,
    AZURE_SP_CLIENT_ID  = var.azure_sp_client_id,
    TENANT_ID           = var.tenant_id
  })
  managed_policy_arns = [
    aws_iam_policy.ciem_oidc_access_policy.arn
  ]
  tags = {}
}
