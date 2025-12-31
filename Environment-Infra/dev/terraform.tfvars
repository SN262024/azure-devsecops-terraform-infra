resource_group = {
  rg = {
    rg_name  = "rg-az-3tire-surendra"
    location = "central india"
  }
}


virtual_network = {
  vnet = {
    vnet_name     = "vnet-az-3tier"
    address_space = ["10.0.0.0/16"]
    rg_name       = "rg-az-3tire-surendra"
    location      = "central india"
  }
}

subnet = {
  subnet1 = {
    subnet_name      = "frontend-subnet"
    address_prefixes = ["10.0.2.0/24"]
    vnet_name        = "vnet-az-3tier"
    rg_name          = "rg-az-3tire-surendra"
  }
  subnet2 = {
      subnet_name      = "backend-subnet"
      address_prefixes = ["10.0.3.0/24"]
      vnet_name        = "vnet-az-3tier"
      rg_name          = "rg-az-3tire-surendra"
    }
  bastion_subnet = {
    subnet_name      = "AzureBastionSubnet" 
    address_prefixes = ["10.0.1.0/24"]
    vnet_name        = "vnet-az-3tier"
    rg_name          = "rg-az-3tire-surendra"
  }
}

bastion = {
  bastion1 = {
    name       = "az-bastion"
    rg_name    = "rg-az-3tire-surendra"
    location   = "central india"
    subnet_key = "bastion_subnet"
    pip_key    = "pip1"
  }
}

virtual_machine = {
  vm1 = {
    vm_name        = "frontend-app-vm01"
    rg_name        = "rg-az-3tire-surendra"
    location       = "central india"
    subnet_key     = "subnet1"
    admin_username = "surendraadmin"
    admin_password = "Surendraadmin@0201#"
  }
  vm2 = {
    vm_name        = "backend-app-vm01"
    rg_name        = "rg-az-3tire-surendra"
    location       = "central india"
    subnet_key     = "subnet2"
    admin_username = "surendraadmin"
    admin_password = "Surendraadmin@0201##"
  }
}

storage_account = {
  sa1 = {
    name     = "az3tirestorage01"
    rg_name  = "rg-az-3tire-surendra"
    location = "central india"
  }
}

storage_container = {
  container1 = {
    name            = "data"
    storage_account = "az3tirestorage01"
  }
}

sql_server = {
  sql1 = {
    server_name    = "az-sql-server01"
    rg_name        = "rg-az-3tire-surendra"
    location       = "central india"
    admin_username = "sqladmin"
    admin_password = "Password@123!"
  }
}

sql_database = {
  db1 = {
    db_name    = "appdb"
    server_key = "sql1"
  }
}

public_ip = {
  pip1 = {
    name     = "az-bastion-pip"
    rg_name  = "rg-az-3tire-surendra"
    location = "central india"
  }
}

key_vault = {
  kv1 = {
    name     = "az-3tire-kv01"
    rg_name  = "rg-az-3tire-surendra"
    location = "central india"
  }
}
