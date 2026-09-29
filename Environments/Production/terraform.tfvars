resource_groups =  {
rg1 = {
    resource_group_name     = "rg-axionsystem-01"
    location = "East US"
   }
   rg2 = {
    resource_group_name     = "rg-axionsystem-02"
    location = "East US2"
   }
}

storage_accounts = {
  sa_name1 = {
    sa_name     = "stgaxionsystem01"
    sa_resource_group = "rg-axionsystem-01"
    sa_location = "East US"
    account_tier             = "Standard"
    account_replication_type = "GRS"
   }
   sa_name2 = {
    sa_name     = "stgaxionsystem02"
    sa_resource_group = "rg-axionsystem-02"
    sa_location = "East US2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
   }
}

vnet_name = {
  vnet1 = {
    vnet_name = "vnet-axion-smartops-dev01"
    resource_group_name = "rg-axion-smartops-dev"
    location = "central india"
    address_space = ["10.0.0.0/16"]
    dns_servers = ["10.0.0.4", "10.0.0.5"]
  }

   vnet2 = {
    vnet_name = "vnet-axion-smartops-dev02"
    resource_group_name = "rg-axion-smartops-dev"
    location = "central india"
    address_space = ["10.1.0.0/16"]
    dns_servers = ["10.1.0.4", "10.1.0.5"]
  }
}

subnet_name = {
    subnet1 = {
        subnet_name = "snet-axion-smartops-frontend"
        resource_group_name = "rg-axion-smartops-systems"
        virtual_network_name = "vnet-axion-smartops-systems"
        address_prefixes = ["10.0.1.0/24"]
        
    }
    
       subnet1 = {
        subnet_name = "snet-axion-smartops-backend"
        resource_group_name = "rg-axion-smartops-systems"
        virtual_network_name = "vnet-axion-smartops-systems"
        address_prefixes = ["10.0.2.0/24"]
    }

       subnet2 = {
        subnet_name = "snet-axion-smartops-database"
        resource_group_name = "rg-axion-smartops-systems"
        virtual_network_name = "vnet-axion-smartops-systems"
        address_prefixes = ["10.0.3.0/24"]
    }

      subnet3 = {
        subnet_name = "snet-axion-smartops-dev02-01"
        resource_group_name = "rg-axion-smartops-systems"
        virtual_network_name = "vnet-axion-smartops-systems"
        address_prefixes = ["10.1.1.0/24"]
        
    }
    
       subnet4 = {
        subnet_name = "snet-axion-smartops-dev02-02"
        resource_group_name = "rg-axion-smartops-systems"
        virtual_network_name = "vnet-axion-smartops-systems"
        address_prefixes = ["10.1.2.0/24"]
    }

       subnet5 = {
        subnet_name = "snet-axion-smartops-dev02-03"
        resource_group_name = "rg-axion-smartops-systems"
        virtual_network_name = "vnet-axion-smartops-systems"
        address_prefixes = ["10.1.3.0/24"]
    }
}