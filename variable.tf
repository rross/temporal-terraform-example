variable "api_key" {
    type        = string
    description = "A Temporal API Key that has the appropriate permissions. See https://docs.temporal.io/cloud/api-keys"
    nullable    = false
}

variable "namespace_name" {
    type        = string
    description = "The name of the namespace you wish to create"
    nullable    = false
}

variable "region1" {
    type        = string
    description = "The name of the region you want your namespace to reside"
    nullable    = false
}

variable "path_to_ca_cert" {
    type        = string
    description = "The full path to the CA Certificate to use for the temporal namespace"
    nullable    = false
}