#!/bin/bash

echo '1500' | sudo tee /proc/sys/vm/dirty_writeback_centisecs
echo 'med_power_with_dipm' | sudo tee /sys/class/scsi_host/host1/link_power_management_policy
echo 'med_power_with_dipm' | sudo tee /sys/class/scsi_host/host2/link_power_management_policy
echo 'med_power_with_dipm' | sudo tee /sys/class/scsi_host/host0/link_power_management_policy
echo '0' | sudo tee /proc/sys/kernel/nmi_watchdog
echo 'auto' | sudo tee /sys/bus/usb/devices/1-10/power/control
echo 'auto' | sudo tee /sys/bus/pci/devices/0000:00:17.0/ata1/power/control
echo 'auto' | sudo tee /sys/bus/pci/devices/0000:00:17.0/ata2/power/control
echo 'auto' | sudo tee /sys/bus/pci/devices/0000:00:17.0/power/control
echo 'auto' | sudo tee /sys/block/sda/device/power/control
echo 'auto' | sudo tee /sys/bus/pci/devices/0000:00:1f.0/power/control
echo 'auto' | sudo tee /sys/bus/pci/devices/0000:00:17.0/ata3/power/control
#echo 'auto' | sudo tee /sys/bus/pci/devices/0000:00:00.0/power/control
echo 'auto' | sudo tee /sys/bus/pci/devices/0000:00:1f.6/power/control
#echo 'auto' | sudo tee /sys/bus/pci/devices/0000:02:00.0/power/control
