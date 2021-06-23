variable "pm_api_url" {}
variable "pm_user" {}
variable "pm_password" {}
variable "pve_user"{}
variable "pve_password"{}
variable "pve_host"{}
variable "domain_name" {}
variable "pve_ssh_private_key" {}
variable "cloud_init_ssh_public_key" {}

variable "nodes" {
    default = {
        "ceph-node-01" = {
            "description" = "{ \"groups\": [\"ceph-node-01\"] }",
            "target_node" = "node1",
            "ip0" = "192.168.0.45",
            "netmask" = "24",
            "gw" = "192.168.0.254"
        },
        "ceph-node-02" = {
            "description" = "{ \"groups\": [\"ceph-node-02\"] }",
            "target_node" = "node2",
            "ip0" = "192.168.0.46",
            "netmask" = "24",
            "gw" = "192.168.0.254"
        },
        "ceph-node-03" = {
            "description" = "{ \"groups\": [\"ceph-node-03\"] }",
            "target_node" = "node3",
            "ip0" = "192.168.0.47",
            "netmask" = "24",
            "gw" = "192.168.0.254"
        }
    }
}
