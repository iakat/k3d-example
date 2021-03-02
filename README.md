# k3d-example

K3d example running microservices-demo locally.

This was tested on WSL 2 Ubuntu 20.04, and Arch.

## Tools used
- k3d + docker-compose for the cluster
- nginx-ingress with modsecurity enabled
- kustomize for applying it, along with all the other cluster services
- cert-manager and external-dns-operator for DNS and TLS, respectively
- Make to quickly run a bunch of commands

## Deploy

### Local requirements

- docker-compose 3+
- [kustomize](https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh) (the built-in kubectl version is old)
- port 80 + 443 unused
    
### Deploying

`make` 😎
(if you want to see what it does, do look at the Makefile, it's quite simple.) 

### Accessing

<http://localhost>
