#!/bin/sh

yum -y update kernel
yum -y install kernel-devel

mkdir /tmp/vbox
mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/vbox
/tmp/vbox/VBoxLinuxAdditions.run
umount /tmp/vbox
rm -rf /tmp/vbox /home/vagrant/.vbox_version
