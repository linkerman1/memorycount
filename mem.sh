#!/bin/bash
find /root/wallie/qemu-server2  /root/wallie/qemu-server  -type f -name "*.conf" -exec grep -E -w -R 'memory' {} \; >memory.txt
