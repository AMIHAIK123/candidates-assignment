#!/bin/bash
#add fix to exercise5-server2 here

ssh-keygen
ssh-copy-id vagrant@192.168.100.10
ssh -o "StrictHostKeyChecking=no" vagrant@server1
