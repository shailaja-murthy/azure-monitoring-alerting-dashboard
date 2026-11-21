
resource "azurerm_resource_group" "monitoring" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    project     = "Azure Monitoring Dashboard"
    environment = "Learning"
    managed_by  = "Terraform"
  }
}

resource "azurerm_virtual_network" "monitoring" {
  name                = "vnet-monitoring"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.monitoring.location
  resource_group_name = azurerm_resource_group.monitoring.name
}

resource "azurerm_subnet" "monitoring" {
  name                 = "subnet-monitoring"
  resource_group_name  = azurerm_resource_group.monitoring.name
  virtual_network_name = azurerm_virtual_network.monitoring.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_public_ip" "monitoring" {
  name                = "pip-monitoring-vm"
  location            = azurerm_resource_group.monitoring.location
  resource_group_name = azurerm_resource_group.monitoring.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_network_security_group" "monitoring" {
  name                = "nsg-monitoring-vm"
  location            = azurerm_resource_group.monitoring.location
  resource_group_name = azurerm_resource_group.monitoring.name
}

resource "azurerm_network_interface" "monitoring" {
  name                = "nic-monitoring-vm"
  location            = azurerm_resource_group.monitoring.location
  resource_group_name = azurerm_resource_group.monitoring.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.monitoring.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.monitoring.id
  }
}

resource "azurerm_network_interface_security_group_association" "monitoring" {
  network_interface_id      = azurerm_network_interface.monitoring.id
  network_security_group_id = azurerm_network_security_group.monitoring.id
}

resource "azurerm_linux_virtual_machine" "monitoring" {
  name                = "vm-monitoring-demo"
  resource_group_name = azurerm_resource_group.monitoring.name
  location            = azurerm_resource_group.monitoring.location
  size                = "Standard_B2ats_v2"

  admin_username                  = "azureuser"
  disable_password_authentication = true

  network_interface_ids = [
    azurerm_network_interface.monitoring.id
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = file(pathexpand("~/.ssh/id_ed25519.pub"))
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
