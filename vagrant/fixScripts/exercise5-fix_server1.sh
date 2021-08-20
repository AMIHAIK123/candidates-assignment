#!/bin/bash
#add fix to exercise5-server1 here

ssh-keygen
ssh-copy-id vagrant@192.168.100.11
ssh -o "StrictHostKeyChecking=no" vagrant@server2
