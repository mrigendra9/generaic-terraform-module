# ============================================================
# Subcriptions
# ============================================================

subscription_id = "9ae61928-2a87-4dc8-a352-004f5b5e3ebf"

# ============================================================
# RESOURCE GROUPS
# ============================================================

resource_groups = {
  rg1 = {
    resource_group_name = "rg-axion-smartops-dev01"
    location            = "East US"
  }

  rg2 = {
    resource_group_name = "rg-axion-smartops-dev02"
    location            = "East US 2"
  }
    rg3 = {
    resource_group_name = "rg-axion-smartops-dev03"
    location            = "central india"
  }

      rg4 = {
    resource_group_name = "rg-axion-smartops-dev04"
    location            = "central india"
  }
}

# ============================================================
# STORAGE ACCOUNTS
# ============================================================
storage_accounts = {
  sa1 = {
    sa_name                  = "stgaxionsdev01"
    sa_resource_group        = "rg-axion-smartops-dev01"
    sa_location              = "East US"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
# ============================================================
# VIRTUAL NETWORKS
# ============================================================
vnets = {
  vnet1 = {
    vnet_name           = "vnet-axion-smartops-dev01"
    resource_group_name = "rg-axion-smartops-dev01"
    location            = "Central India"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}
# ============================================================
# SUBNETS
# ============================================================
subnets = {
  subnet1 = {
    subnet_name          = "snet-frontend-axionsmartops-01"
    resource_group_name  = "rg-axion-smartops-dev01"
    virtual_network_name = "vnet-axion-smartops-dev01"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    subnet_name          = "snet-backend-axionsmartops-01"
    resource_group_name  = "rg-axion-smartops-dev01"
    virtual_network_name = "vnet-axion-smartops-dev01"
    address_prefixes     = ["10.0.2.0/24"]
  }

  subnet3 = {
    subnet_name          = "snet-database-axionsmartops-01"
    resource_group_name  = "rg-axion-smartops-dev01"
    virtual_network_name = "vnet-axion-smartops-dev01"
    address_prefixes     = ["10.0.3.0/24"]
  }
}
# ============================================================
# PUBLIC IP ADDRESSES
# ============================================================

public_ips = {
  pip1 = {
    pip_name            = "pip-frontend-axion-smartops-dev01"
    location            = "Central India"
    resource_group_name = "rg-axion-smartops-dev01"
    sku = "Standard"
    allocation_method   = "Static"
  }

  pip2 = {
    pip_name            = "pip-backend-axion-smartops-dev01"
    location            = "Central India"
    resource_group_name = "rg-axion-smartops-dev02"
    sku = "Standard"
    allocation_method   = "Static"
  }

  pip3 = {
    pip_name            = "pip-database-axion-smartops-dev01"
    location            = "Central India"
    resource_group_name = "rg-axion-smartops-dev02"
    sku = "Standard"
    allocation_method   = "Static"
  }
}
  

# ============================================================
# LINUX VIRTUAL MACHINES
# ============================================================
linux_virtual_machines = {
  vm1 = {
    vm_name             = "lvmaxsmartopsdev01"
    resource_group_name = "rg-axion-smartops-dev01"
    subnet_name         = "snet-frontend-axionsmartops-01"
    nic_name          = "nic-frontend-axionsmartops-01"
    virtual_network_name = "vnet-axion-smartops-dev01"
    location            = "Central India"
    vm_size        = "Standard_D2s_v3"
    admin_username = "adminuser"
    admin_password = "welcome2u!"
    os_disk_caching      = "ReadWrite"
    storage_account_type = "Standard_LRS"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
    ip_config_name = "internal"
    private_ip_allocation = "Dynamic"
  }

    vm2 = {
    vm_name             = "lvmaxsmartopsdev02"
    resource_group_name = "rg-axion-smartops-dev01"
    subnet_name         = "snet-backend-axionsmartops-01"
    nic_name          = "nic-backend-axionsmartops-01"
    virtual_network_name = "vnet-axion-smartops-dev01"
    location            = "Central India"
    vm_size        = "Standard_D2s_v3"
    admin_username = "adminuser"
    admin_password = "welcome2u!"
    os_disk_caching      = "ReadWrite"
    storage_account_type = "Standard_LRS"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
    ip_config_name = "internal"
    private_ip_allocation = "Dynamic"
  }
    vm3 = {
    vm_name             = "lvmaxsmartopsdev03"
    resource_group_name = "rg-axion-smartops-dev01"
    subnet_name         = "snet-database-axionsmartops-01"
    nic_name          = "nic-database-axionsmartops-01"
    virtual_network_name = "vnet-axion-smartops-dev01"
    location            = "Central India"
    vm_size        = "Standard_D2s_v3"
    admin_username = "adminuser"
    admin_password = "welcome2u!"
    os_disk_caching      = "ReadWrite"
    storage_account_type = "Standard_LRS"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
    ip_config_name = "internal"
    private_ip_allocation = "Dynamic"
  }

  
}


# ============================================================
# WINDOWS VIRTUAL MACHINES
# ============================================================

windows_virtual_machine = {
  vm1 = {
  vm_name                = "wvmaxsmartopsdev01"
  resource_group_name = "rg-axion-smartops-dev02"
  subnet_name         = "snet-database-axionsmartops-01"
  nic_name          = "nic-wvmaxsmartopsdev01"
  virtual_network_name = "vnet-axion-smartops-dev01"
  location            = "eastus2"
  vm_size        = "Standard_DC1s_v3"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
  publisher = "MicrosoftWindowsServer"
  offer     = "WindowsServer"
  sku       = "2016-Datacenter"
  version   = "latest"
  ip_config_name = "internal"
  private_ip_allocation = "Dynamic"
  }
}

# ============================================================
# Keyvaults
# ============================================================
keyvaults = {
  kv1 = {
    keyvault_name              = "kv-axionsmartops-dev01"
    location                   = "eastus2"
    resource_group_name        = "rg-axion-smartops-dev02"
    rbac_authorization_enabled = false
    sku_name                   = "premium"
    soft_delete_retention_days = 7

    access_policy = {
      key_permissions = [
        "Create",
        "Get",
      ]

      secret_permissions = [
        "Set",
        "Get",
        "Delete",
        "Purge",
        "Recover"
      ]
    }
  }
}
