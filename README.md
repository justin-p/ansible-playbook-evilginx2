# ansible-playbook-evilginx2

A W.I.P. collection of Ansible playbooks that deploys a evilginx2 in a tmux session, including the provision of hosts and DNS records using Terraform. 

## How to use

### Ansible

Will configure the following items to a existing host:

- Installs any needed roles locally with ansible-galaxy.
- Installs any needed packages for Ansible management.
- Update installed packages to latest version.
- Setup Firewall (allows in 22, 80, 443)
- Update the hostname.
- Install docker and docker pip package
- Ensure tmux and evilginx are installed, then start evilginx2 in a tmux session.

0. Ensure Ansible is installed.

1. Update the inventory file
   - Point to your IP.
   - Set the correct SSH key.
   - Set the correct SSH user.
2. Update `defaults/main.yml`
   - Set `server_hostname` to your desired hostname.
3. Run Playbook
   - `ansible-playbook main.yml --inventory inventory.yml`
4. Connect to evilginx2
   - `ssh root@IP`
   - `tmux a`

### Ansible and Terraform

TODO
