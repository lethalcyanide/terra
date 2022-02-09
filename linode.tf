terraform{
  required_providers{
    linode={
      source = "linode/linode"
    }
  }
}


provider "linode" {
  token = "3c625290580fbc9268403e1cde586bf43076c08cad1fceeb6dbdcda9ee0dd01a"
  
}

resource "linode_instance" "hack" {
  label = "hacking1"
  image = "linode/centos7"
  region = "ap-west"
  type = "g6-nanode-1"
  root_pass = "C123#c123#"
}
