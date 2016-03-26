# ansible-timemachine

A ansible playbook to setup a TimeMachine on Debian (Jessie).

Since there is currently not a package for netatalk available for Jessie this playbook provides an easy way to build and install it.

Setup Raspbery Pi
-----------------
1. Download image from https://www.raspberrypi.org/downloads/raspbian/. I've used raspbian jessy lite
2. Install it on SD card
3. Boot raspberry pi, ssh to it, setup ssh key for user "pi", run raspi-config and resize root partition, reboot

Prepare USB disk
----------------

1. Attach usb disk to mac and run diskutil to determine device 
<pre> 
 diskutil list
</pre>

2. Format usb disk using HFS+ non-journaled. I created two partitions:
<pre>
diskutil partitionDisk /dev/disk2 2 MBR HFS+ backups 650G HFS+ media 100G
</pre>

3. Determine volume UUID:
<pre>
diskutil info disk2s1|grep "Volume UUID"
</pre>

4. unmount disk
<pre>
diskutil unmountDisk /dev/disk2
</dev>

Prepare ansible config
----------------------

1. Create host_vars/raspberry_pi_host_name_or_ip file, copying from example.com. 
2. Fill parameters in this file, see comments in file for instruction

Run
---
<pre>
ansible-playbook -i "raspberry_pi_host_name_or_ip," playbook.yml 
</pre>


