#!/bin/bash

read -p "check the kernel name &&& sudo?(y/n): " answer

# 检查用户输入
if [ "$answer" = "y" ]; then
    echo "start compilling..."
    sudo make clean
    bear make -j16
    sudo make INSTALL_MOD_STRIP=1 modules_install
    sudo make install
else
    exit 1
fi