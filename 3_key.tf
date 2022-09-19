
# 3.Указываем публичный ключ
resource "aws_key_pair" "sli_key" {
  key_name   = "slivak-key#1"
  public_key = "${file("~/.ssh/id_ed25519.pub")}"
}

