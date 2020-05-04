resource "aws_security_group" "rds_sg" {
  name        = "rds-sg"
  description = "Allow traffic for rds "
  vpc_id        = "vpc-e5f0f682"  # hard-coded, need to fix data.statefile issue

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.61.124.0/24"]
    #cidr_blocks = ["10.0.0.0/8"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "rds-sg"
  }
}
