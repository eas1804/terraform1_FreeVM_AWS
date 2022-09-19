
# 2. Создаем виртуальную машину с именем test_vm_for_ansible
resource "aws_instance" "test_vm_for_ansible" {
  ami           = "ami-0440e5026412ff23f"     # ОС (Ubuntu, 22.04 LTS)
  instance_type = "t3.micro"                  # тип процессора и ресурс машины (CPU и RAM)
	subnet_id = "subnet-0cc772db0482a2639"      # одна из дефолтных подсетей
	associate_public_ip_address = true          # автоматически установить динамический ip
  	
  key_name                = aws_key_pair.sli_key.key_name   # будем использовать ключ SSH - sli_key
  vpc_security_group_ids  = [aws_security_group.sli_ssh.id] # будем использовать группу безопасности - sli_ssh
  count = 1                                                 # Сколько машин создать. Если 0 - то удалить
  tags = { Name = "test-instance_for_ansible" }
}



