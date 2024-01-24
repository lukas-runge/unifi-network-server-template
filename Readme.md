# Docker Compose Config for UniFi Network Application

## usage

### 1. use as template or clone this repo
```
git clone git@github.com:lukas-runge/unifi-network-server-template.git
```

### 2. add `.env` file with strong mongo pw
```
MONGO_PASS=my-very-strong-password
```

### 3. run detached
```
docker compose up -d
```

### 4. finish setup of controller at https://localhost:8443

### 5. access devices via ssh
> [!TIP]
> Prior to setup/adoption, devices have a set of default credentials. 
> - UniFi Consoles - `root` / `ubnt` or `root` / `ui`
> - UniFi Gateways - `root` / `ubnt` or `root` / `ui`
> - UniFi Devices - `ubnt` / `ubnt` or `ui` / `ui`

```
> ssh ubnt@192.168.1.4
ubnt@192.168.1.4's password: ubnt


BusyBox v1.25.1 () built-in shell (ash)


  ___ ___      .__________.__
 |   |   |____ |__\_  ____/__|
 |   |   /    \|  ||  __) |  |   (c) 2010-2023
 |   |  |   |  \  ||  \   |  |   Ubiquiti Inc.
 |______|___|  /__||__/   |__|
            |_/                  https://www.ui.com

      Welcome to UniFi US-24-G1!

USwitch24G1-US.6.6.53# 
```

> [!IMPORTANT]  
> You must reset non-adopted local devices if they can't be accessed over ssh.

### 6. run `set-inform` on local devices to adopt to new controller
```
set-inform http://<controller-ip>:8080/inform
```

> [!IMPORTANT]
> **Adopt Consoles & Gateways first!**
> 
> Those will allow for automatic adoption of all other devices thru the UniFi Network Application backend.

### 7. adopt devices in the UniFi Network Application Backend 🥳

### 8. configure your network 🚀