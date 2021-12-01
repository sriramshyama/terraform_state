provider "azurerm" {
  features {}
  version         = "=2.46.0"
  subscription_id = "a3bdd4bb-db8d-447c-bfd5-0a875a500a75"
  client_id       = "2f292768-e53a-4500-9461-1a2a20233caf"
  client_secret   = "nGJ7Q~y.ve017R.vz4xu224LpwA~Wnd6k4NE2"
  tenant_id       = "84960016-8942-4b2e-9be8-259fca23e386"
}

terraform {
  backend "azurerm" {
    storage_account_name = "tfrgstorageaccount123"
    container_name       = "container2"
    key                  = "dev.terraform.tfstate"
    access_key           = "bKS97dFFKcLaNCDofaJbTFoc4XZs+SARb1EyzwMkKDUNY9pRMadFayukprsj3CXuS0Cf5Ax9PHjropv/PnSzjw=="
  }
}
