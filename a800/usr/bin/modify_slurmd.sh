#!/bin/bash

sed -i '/\[Service\]/a Restart=always\nRestartSec=30\nStartLimitInterval=90\nStartLimitBurst=3' /usr/lib/systemd/system/slurmd.service

# Reload systemd to apply changes
systemctl daemon-reload

