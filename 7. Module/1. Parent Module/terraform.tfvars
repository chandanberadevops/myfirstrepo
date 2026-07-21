RGs = {
  rg-demo = {
    location       = "East US"
    vnet_name      = "myvnet1"
    vnet_address   = ["10.0.0.0/16"]
    subnet_name    = "subnet1"
    subnet_address = ["10.0.1.0/24"]
    ip_allocation_method = "Static"
  }
  rg-dev = {
    location       = "East US"
    vnet_name      = "myvnet2"
    vnet_address   = ["20.0.0.0/16"]
    subnet_name    = "subnet2"
    subnet_address = ["20.0.1.0/24"]
    ip_allocation_method = "Static"
  }
  rg-prod = {
    location       = "East US"
    vnet_name      = "myvnet3"
    vnet_address   = ["30.0.0.0/16"]
    subnet_name    = "subnet3"
    subnet_address = ["30.0.1.0/24"]
    ip_allocation_method = "Static"
  }
}