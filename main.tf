provider "azurerm" {
    subscription_id = "${var.ARM_SUBSCRIPTION_ID}"
    client_id       = "${var.ARM_CLIENT_ID}"
    client_secret   = "${var.ARM_CLIENT_SECRET}"
    tenant_id       = "${var.ARM_TENANT_ID}"
}


variable "ARM_SUBSCRIPTION_ID" {
        default = "ebaedcbb-c488-43c3-88ed-157b6f4d88d8"
}
variable "ARM_CLIENT_ID" {
        default = "e6fc35cc-4c8e-46bc-a84d-7ea626ea7831"
}
variable "ARM_CLIENT_SECRET" {
        default = "29930500-af63-4a70-82e3-e18b44b5e458"
}
variable "ARM_TENANT_ID" {
        default = "a1d36f84-9b3e-4441-ab5a-45f83d0ec041"
}

resource "azurerm_resource_group" "network" {
  name     = "production"
  location = "West US"
}
