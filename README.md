# ansible-playbook-evilginx2

a W.I.P. Ansible playbook that deploys a evilginx2 in a tmux session. 

## How to use

### Ansible

Will configure the following items to a existing host:

- Installs any needed roles locally with ansible-galaxy.
- Installs any needed packages for Ansible management.
- Update installed packages to latest version.
- Setup Firewall (allows in 22, 80 ,443)
- Update the hostname.
- Install docker and docker pip package
- Setup bash aliases to easily start tmux and evilginx2
- Clone evilginx2 source and build docker image
- Ensure tmux is installed and start evilginx2 container in tmux

0. Ensure Ansible is installed.

1. Update the inventory file
   - Point to your IP.
   - Set the correct SSH key.
   - Set the correct SSH user.
2. Update `defaults/main.yml`
   - Set `server_hostname` to your desired hostname.
3. Run Playbook
   - `ansible-playbook main.yml --inventory inventory.yml`

### Ansible and Terraform

TODO