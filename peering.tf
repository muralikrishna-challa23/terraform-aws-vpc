resource "aws_vpc_peering_connection" "default" {
  peer_vpc_id   = data.aws_vpc.default.id
  vpc_id        = aws_vpc.main.id
  auto_accept   = true

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  tags =  merge(
              var.peering_tags,
              local.common_tags,
              {Name = "${local.common_name_suffix}-peering" }
  )
}