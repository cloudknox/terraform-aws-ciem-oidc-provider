module "example" {
  source              = "../.."
  azure_authority_uri = var.azure_authority_uri
  azure_sp_client_id  = var.azure_sp_client_id
  ciem_oidc_role_name = var.ciem_oidc_role_name
  tenant_id           = var.tenant_id
}
