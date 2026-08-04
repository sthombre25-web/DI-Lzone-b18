module "rg" {
source = "../../modules/Resource_group"

rgs = var.rgs
}

module "vnet" {
    depends_on = [ module.rg ]
source = "../../modules/virtual_network"

vnets = var.vnets
}

module "subnet" {
    depends_on = [ module.vnet ]
source = "../../modules/subnet"

snets = var.snets
}

module "public_ip" {
    depends_on = [ module.rg ]
source = "../../modules/public_ip"
pips = var.pips
}

module "virtual_machine" {
    depends_on = [module.subnet,module.public_ip ]
 source = "../../modules/virtual_machine"

 vms = var.vms
}