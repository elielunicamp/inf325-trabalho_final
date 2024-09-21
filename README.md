
# E-pinga Database Labs

This is a database lab of a project e-pinga;


## Requirements

```bash
  #Python dependencies
  mariadb
  sqlalchemy
  ipython-sql
  jupyterlab_sql
  redis
  pprintpp
  Faker
  
  # MariaDB dependencies
  libmariadb-dev  # Necessário para o conector MariaDB em Python

  # Redis dependencies
  gcc
  build-essential
  libc-bin
```

## Tools

```bash
# Ferramentas básicas
htop
vim
curl
wget
net-tools
locate
```

## Project Build

Clone the project:

- SSH
```bash
  git clone git@github.com:elielunicamp/inf325-trabalho_final.git
```

- HTTPS
```bash
  git clone https://github.com/elielunicamp/inf325-trabalho_final.git
```

Go to the project directory:
```bash
  cd inf325-trabalho_final
```

Execute the command above to build the docker containers (MariaDB and Redis):
```bash
sudo docker-compose -f docker/docker-compose.yml build
```

Execute the command above to put the containers to running (MariaDB and Redis):
```bash
sudo docker-compose -f docker/docker-compose.yml up -d
```

## Access the mariadb instance

Execute the command above to put the containers to running (MariaDB and Redis):
```bash
sudo docker exec -it epinga_maridadb /bin/bash
```

## Access the redis instance

Execute the command above to put the containers to running (MariaDB and Redis):
```bash
sudo docker exec -it epinga_redis /bin/bash
```

## Authors

- [Gustavo](https://github.com/gustviana)
- [Leander](https://github.com/leander-silveira)
- [Sandro Santana](https://www.github.com/escaravelho)
- [Eliel](https://github.com/elielunicamp)