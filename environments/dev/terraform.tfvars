rgs = {
  rg1 = {
    name     = "rg-nath"
    location = "central india"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-nath"
    location            = "central india"
    resource_group_name = "rg-nath"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}

snets = {
  snet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-nath"
    virtual_network_name = "vnet-nath"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

pips = {
  pip1 = {
    name                = "frontend-pip"
    resource_group_name = "rg-nath"
    location            = "central india"
    allocation_method   = "Static"
  }
}

vms = {
  vm1 = {
    nic_name = "frontend-nic"
    location = "central india"
    rg_name  = "rg-nath"
    subnet_name    = "frontend-subnet"
    pip_name       = "frontend-pip"
    vnet_name      = "vnet-nath"
    vm_name        = "frontend-vm"
    size           = "Standard_D4_v5"
    admin_username = "adminuser"
    admin_password = "azure@1234"
  }
}
