resource "aws_lightsail_key_pair" "test_key_pair" {
  name = "test_key_pair"
}

resource "aws_lightsail_instance" "lightsail_test" {
  name              = var.instance_name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = aws_lightsail_key_pair.test_key_pair.name
  tags = {
    Name = "some name for our resource"
    env = "dev"
  }
}

resource "aws_lightsail_static_ip" "ip" {
  name = "example"
}

resource "aws_lightsail_static_ip_attachment" "ip" {
  static_ip_name = aws_lightsail_static_ip.ip.id
  instance_name = aws_lightsail_instance.lightsail_test.id
}


output "id" {
  value = aws_lightsail_instance.lightsail_test.arn
}
output "created_at" {
  value = aws_lightsail_instance.lightsail_test.created_at
}
output "ip_address" {
  value = aws_lightsail_static_ip.ip.ip_address
}
output "public_key" {
  value = aws_lightsail_key_pair.test_key_pair.public_key
}
output "priv_key" {
  value = aws_lightsail_key_pair.test_key_pair.private_key
}
