# Вывести IP адрес

output instance_sli_ips  {
  value       = aws_instance.test_vm_for_ansible.*.public_ip
  }

# Вывести Instance ID
output instance_sli_id  {
  value       = aws_instance.test_vm_for_ansible.*.id
  }


