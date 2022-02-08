terraform{
  required_providers{
    linode={
      source = "linode/linode"
    }
  }
}


provider "linode" {
  token = "cd53e1f85f94e1366371e5411cc2e9d4c76c59632ba7253e84267c7d6297465b"
  
}

resource "linode_instance" "hack" {
  image = "linode/centos7"
  region = "ap-west"
  type = "g6-nanode-1"
  root_pass = "C123#c123#"
}