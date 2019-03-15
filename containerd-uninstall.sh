#!/bin/bash
systemctl stop containerd
systemctl disable containerd
rm -rf /etc/systemd/system/containerd.service
rm -rf /etc/containerd
rm -rf /etc/crictl.yaml
rm -rf /var/lib/containerd
rm -rf /usr/local/bin/containerd*
rm -rf /usr/local/bin/cri*
rm -rf /usr/local/bin/ctr
rm -rf /usr/local/bin/runc
