resource "aws_security_group" "allow-all" {

  name        = "${var.name}-sg"
  //description = "Kubernetes"
  vpc_id      = aws_vpc.this.id

  tags = {
    Name                = "${var.name}-sg"
    #"${var.cluster_id}" = "owned" # Required by Rancher RKE
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  //
  //  //  ingress {
  //  //    from_port   = 22
  //  //    to_port     = 22
  //  //    protocol    = "tcp"
  //  //    cidr_blocks = ["0.0.0.0/0"]
  //  //  }
  //  //
  //  //  ingress {
  //  //    from_port   = 6443
  //  //    to_port     = 6443
  //  //    protocol    = "tcp"
  //  //    cidr_blocks = ["0.0.0.0/0"]
  //  //  }
  //
  //  //    ingress {
  //  //        from_port   = 80
  //  //        to_port     = 80
  //  //        protocol    = "tcp"
  //  //        cidr_blocks = ["0.0.0.0/0"]
  //  //    }
  //
  //  //    ingress {
  //  //        from_port   = 443
  //  //        to_port     = 443
  //  //        protocol    = "tcp"
  //  //        cidr_blocks = ["0.0.0.0/0"]
  //  //    }
  //
  //  //    ingress {
  //  //        from_port   = 8080
  //  //        to_port     = 8080
  //  //        protocol    = "tcp"
  //  //        cidr_blocks = ["0.0.0.0/0"]
  //  //    }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}