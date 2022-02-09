terraform{
  required_providers{
    linode={
      source = "linode/linode"
    }
  }
}


provider "linode" {
  token = "d753402ad198590cbdf408fad76a6edb57a739bc92cd8aaa9761079f0181eb8b"
  
}

resource "linode_instance" "hack" {
  label = "hacking1"
  image = "linode/centos7"
  region = "ap-west"
  type = "g6-nanode-1"
  root_pass = "C123#c123#"
}
