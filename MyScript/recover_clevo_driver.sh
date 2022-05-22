#!/bin/bash
kernel_release=$(uname -r)
mv ./clevo-xsm-wmi/certs/* /lib/modules/$kernel_release/build/certs/ 
cd ./clevo-xsm-wmi/module && make && make install && make clean && reboot
