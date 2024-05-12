# Home Laboratory

💾 Some of the applications that I run in my home lab.

![img](https://storage.yandexcloud.net/uuuuuno/github/home-lab/img.png)

## Repository Contents

Each directory is a separate server or a group of servers virtualized on my proxmox cluster.

- **ansible tasks**
  - update ubuntu
  - install docker
- **apps server**
  - ghost
  - uptime-kuma
  - urtmp
- **coordinator server**
  - rancher
- **data server**
  - postgres
- **kubernetes cluster**
  - minecraft
- **proxy server**
  - cloudflared

## Other

### Proxmox

Each of my virtualization servers has at least 2 Gigabit network cards. I have allocated 2 separate vlans. The first is for cluster management, replication, etc. And the second one is for virtualized servers.

### Network

I have a network with a bandwidth of 1 gigabit per second (Gbps). I plan to upgrade my current router to a Mikrotik RB1100AHx2. I am impressed by the features and functionality of Mikrotik router for the price that they offer.

Currently, I have three virtual networks: 1) management 2) servers 3) other. Each of these networks is isolated from the others.
