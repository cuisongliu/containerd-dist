#!/bin/bash
wget https://github.com/cuisongliu/containerd-dist/releases/download/v1.2.4/containerd-v1.2.4.tar.gz
tar -C /usr/local/bin -xzf containerd-v1.2.4.tar.gz
rm -rf containerd-v1.2.4.tar.gz
chmod a+x /usr/local/bin/*
mkdir -p /etc/containerd
containerd config default > /etc/containerd/config.toml
cat <<EOF > /etc/systemd/system/containerd.service
[Unit]
Description=containerd container runtime
Documentation=https://containerd.io
After=network.target
  
[Service]
ExecStartPre=/sbin/modprobe overlay
ExecStart=/usr/local/bin/containerd
Restart=always
RestartSec=5
Delegate=yes
KillMode=process
OOMScoreAdjust=-999
LimitNOFILE=1048576
LimitNPROC=infinity
LimitCORE=infinity
  
[Install]
WantedBy=multi-user.target
EOF
systemctl enable containerd
systemctl restart containerd
systemctl status containerd

cat <<EOF > /etc/crictl.yaml
runtime-endpoint: unix:///run/containerd/containerd.sock
image-endpoint: unix:///run/containerd/containerd.sock
timeout: 10
debug: false
EOF
