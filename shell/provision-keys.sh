# Keychain manages 'ssh-agent'(s).
apt-get install -y keychain
sed -i '$a eval `keychain --eval /home/vagrant/.ssh/misc-code-keys/id_rsa_code-clone`' /home/vagrant/.bashrc
sed -i '$a eval `keychain --eval /home/vagrant/.ssh/misc-code-keys/id_rsa_lensferry_dev2`' /home/vagrant/.bashrc
sed -i '$a eval `keychain --eval /home/vagrant/.ssh/misc-code-keys/id_rsa_lensferry_stage`' /home/vagrant/.bashrc
sed -i '$a eval `keychain --eval /home/vagrant/.ssh/misc-code-keys/id_rsa_lensferry_prod`' /home/vagrant/.bashrc

# Set github public fingerprint.
ssh -oStrictHostKeyChecking=no github.com uptime

# Remove VM git-files, make room for new git clone.
cd /vagrant
rm -rf .gitignore
rm -rf .git
