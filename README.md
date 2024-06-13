# docker-findomain

Dockerized version of findomain. Findomain is a tool that allows you monitor for subdomains. This is used for mapping the footprint linked to a domain.

## Building the Docker image

```shell
sudo docker build -t findomain . 
```

## Using findomain

```shell
sudo docker run --rm -it findomain -t "target.domain"
```

It outputs a lists of subdomains even if you don't configure any API keys that comes from the crtsh database which you can find at https://crt.sh

# Documentation

* https://github.com/Findomain/Findomain
