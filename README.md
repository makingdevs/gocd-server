# gocd-server

## Run it

In order to create a virtual machine with docker:
```sh
  docker-machine create --driver virtualbox dev
  eval "$(docker-machine env dev)"
```

And to run the gocd server:
```
  docker build -t centos-gocd .
  docker run -d -p 8153:8155 --name gocd-server centos-gocd
```
