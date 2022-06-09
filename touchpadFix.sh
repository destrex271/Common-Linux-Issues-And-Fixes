#!/bin/bash
rmmod i2c_hid_acpi i2c_hid
modprobe i2c-hid-acpi
modprobe i2c-hid
echo "Touchpad OK"
exit