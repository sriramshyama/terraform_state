resource "azurerm_public_ip" "example" {
  name                = "Tfpip1"
  resource_group_name = tfrg1
  location            = west europe
  allocation_method   = "Static"
}

resource "azurerm_virtual_network" "example" {
  name                = "virtualNetwork1"
  location            = west europe
  resource_group_name = tfrg1
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }

  subnet {
    name           = "subnet3"
    address_prefix = "10.0.3.0/24"
  }

  tags = {
    environment = "Production"
  }
}
