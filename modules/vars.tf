


variable "access_key" { 
    default = "AKIAI44PEHXJGBWJJZMA"
}

variable "secret_key" { 
    default = "Nf3IIZYsTR1jLcS6eP3vLUQCrfM+5iN1hsE2d3L2"
}


variable "region" {
    default = "us-east-2"
}

provider "aws"{
     access_key = "${var.access_key}"
     secret_key = "${var.secret_key}"
     region = "${var.region}"
}


variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}



variable "AMIS" {
  default = {
    us-east-2 = "ami-618fab04"
  }
}
