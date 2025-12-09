variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "project" {
    type = string
}

variable "environment"{
    type = string
}

variable "vpc_tags" {
    default = {}
}

variable "ig_tags" {
    default = {}
}

variable "public_subnet_tags"{
    type = map
    default = {}
}
variable "public_subnet_cidr" {
    type = list
}

variable "private_subnet_tags"{
    type = map
    default = {}
}
variable "private_subnet_cidr" {
    type = list
}

variable "database_subnet_tags"{
    type = map
    default = {}
}
variable "database_subnet_cidr" {
    type = list
}

variable "public_route_table_tags"{
    type = map
    default = {}
}

variable "private_route_table_tags"{
    type = map
    default = {}
}

variable "database_route_table_tags"{
    type = map
    default = {}
}

variable "eip_tags" {
    type = map
    default = {}
}

variable nat_gateway_tags {
    type = map
    default = {}
}

variable "peering_tags" {
    type = map
    default = {}
}