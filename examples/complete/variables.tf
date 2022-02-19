variable "azure_authority_uri" {
  description = "indicates a uri that the aws app inside azure active directory can request tokens from"
  type        = string
}

variable "azure_sp_client_id" {
  description = "the client id of the service principal that was created during onboarding"
  type        = string
}

variable "ciem_oidc_role_name" {
  description = "name of the oidc iam role"
  type        = string
}

variable "tenant_id" {
  description = "id of the tenant where the application is created"
  type        = string
}
