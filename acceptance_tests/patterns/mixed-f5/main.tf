module "acceptance_tests" {
  source                              = "../../../patterns/mixed"
  ibmcloud_api_key                    = var.ibmcloud_api_key
  TF_VERSION                          = "1.0"
  prefix                              = "at-test"
  ssh_public_key                      = "ssh-rsa AAAAthisisatesthihello=== test@test.test"
  region                              = "us-south"
  tags                                = ["acceptance-test", "landing-zone"]
  network_cidr                        = "10.0.0.0/8"
  vpcs                                = ["management", "workload"]
  enable_transit_gateway              = true
  add_atracker_route                  = true
  hs_crypto_instance_name             = null
  hs_crypto_resource_group            = null
  vsi_image_name                      = "ibm-ubuntu-18-04-6-minimal-amd64-2"
  vsi_instance_profile                = "cx2-4x8"
  vsi_per_subnet                      = 1
  cluster_zones                       = 3
  flavor                              = "bx2.16x64"
  workers_per_zone                    = 1
  entitlement                         = null
  wait_till                           = "IngressReady"
  override                            = false
  add_edge_vpc                        = true
  create_f5_network_on_management_vpc = false
  provision_teleport_in_f5            = true
  vpn_firewall_type                   = "vpn-and-waf"
  f5_image_name                       = "f5-bigip-15-1-5-1-0-0-14-all-1slot"
  f5_instance_profile                 = "cx2-4x8"
  hostname                            = "f5-ve-01"
  domain                              = "local"
  default_route_interface             = null
  tmos_admin_password                 = "AcceptanceTestPassword1"
  license_type                        = "none"
  byol_license_basekey                = null
  license_host                        = null
  license_username                    = null
  license_password                    = null
  license_pool                        = null
  license_sku_keyword_1               = null
  license_sku_keyword_2               = null
  license_unit_of_measure             = "hourly"
  do_declaration_url                  = null
  as3_declaration_url                 = null
  ts_declaration_url                  = null
  phone_home_url                      = null
  template_source                     = "f5devcentral/ibmcloud_schematics_bigip_multinic_declared"
  template_version                    = "20210201"
  app_id                              = null
  tgactive_url                        = ""
  tgstandby_url                       = null
  tgrefresh_url                       = null
  teleport_license                    = "string"     # var.teleport_license
  https_cert                          = "string"     # var.https_cert
  https_key                           = "string"     # var.https_key
  teleport_domain                     = "domain.com" # var.teleport_domain
  teleport_version                    = "string"     # var.teleport_version
  message_of_the_day                  = "string"     # var.message_of_the_day
  teleport_hostname                   = "string"     # var.teleport_hostname
  teleport_admin_email                = "email@email.email"
}