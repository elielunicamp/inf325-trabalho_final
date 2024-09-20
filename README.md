
# E-pinga Database Labs

This is a database lab of a project e-pinga;


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