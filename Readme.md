# Docker Compose Config for UniFi Network Application

## usage

### use as template or clone
```
git clone git@github.com:lukas-runge/unifi-network-server-template.git
```

### add `.env` file with strong mongo pw
```
MONGO_PASS=my-very-strong-password
```

### run detached
```
docker compose up -d
```

### visit local backend at https://localhost:8443

### (optional) reset local devices if they can't be accessed over ssh

### run `set-inform` on local devices via ssh terminal to adopt to new controller
```
set-inform http://<local-controller-ip>:8080/inform
```