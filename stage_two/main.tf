provider "vagrant" {}



resource "vagrant_vm" "my_vm" {

}


resource "null_resource" "ansible_provisioning" {
  provisioner "local-exec" {
    command = "ansible-playbook -i inventory.ini playbook.yml"
    
    working_dir = "ansible"
  }
}