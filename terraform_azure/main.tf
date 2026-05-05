resource "azurerm_resource_group" "ahmed" {
  name     = "ahmed-resources"
  location = "East Asia"
}

resource "azurerm_virtual_network" "ahmed" {
  name                = "ahmed-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.ahmed.location
  resource_group_name = azurerm_resource_group.ahmed.name
}

resource "azurerm_subnet" "ahmed" {
  name                 = "ahmed-internal"
  resource_group_name  = azurerm_resource_group.ahmed.name
  virtual_network_name = azurerm_virtual_network.ahmed.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "ahmed" {
  name                = "ahmed-nic"
  location            = azurerm_resource_group.ahmed.location
  resource_group_name = azurerm_resource_group.ahmed.name

  ip_configuration {
    name                          = "ahmed-internal"
    subnet_id                     = azurerm_subnet.ahmed.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.ahmed.id
  }
}

resource "azurerm_network_security_group" "ahmed" {
  name                = "ahmed-security-group"
  location            = azurerm_resource_group.ahmed.location
  resource_group_name = azurerm_resource_group.ahmed.name

  security_rule {
    name                        = "allow-ssh-http-https"
    priority                    = 100
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    source_port_range           = "*"
    destination_port_ranges     = ["22", "80", "443"]
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
  }
}

resource "azurerm_public_ip" "ahmed" {
  name                = "ahmed-public-ip"
  resource_group_name = azurerm_resource_group.ahmed.name
  location            = azurerm_resource_group.ahmed.location
  allocation_method   = "Static"
}

resource "azurerm_network_interface_security_group_association" "ahmed" {
  network_interface_id      = azurerm_network_interface.ahmed.id
  network_security_group_id = azurerm_network_security_group.ahmed.id
}

resource "azurerm_linux_virtual_machine" "ahmed" {
  name                = "ahmed-machine"
  resource_group_name = azurerm_resource_group.ahmed.name
  location            = azurerm_resource_group.ahmed.location
  size                = "Standard_d2s_v3"

  admin_username = "adminuser"
  admin_password = "Shakeer2904@"

  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.ahmed.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
  publisher = "Canonical"
  offer     = "ubuntu-24_04-lts"
  sku       = "server"
  version   = "latest"
}
}