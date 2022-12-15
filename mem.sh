#!/bin/bash
find /root/wallie/qemu-server2  /root/wallie/qemu-server  -type f -name "*.conf" -exec grep -E -w -R 'memory' {} \; >memory.txt
awk '{ sum += $2 } END { print "\n My RAM is full at the moment:", sum}' memory.txt > memory.tmp && mv memory.tmp memory.txt
