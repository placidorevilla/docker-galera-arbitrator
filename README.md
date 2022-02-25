MariaDB Galera Cluster Arbitrator for Docker

# Usage
```
docker run -d -e GALERA_NODES=10.0.0.1,10.0.0.2 -e GALERA_GROUP="ClusterName" --name garbd ghcr.io/placidorevilla/docker-galera-arbitrator
```
This is a multiarch image for amd64 and arm64.

## Environment Variables
* Mandatory (service won't start otherwise)
    * `GALERA_NODES` will be passed to the daemon as option `-a` (`--address`)
    * `GALERA_GROUP` will be passed as `-g` (`--group`)

* Optional
    * `GALERA_OPTIONS` which will be passed on as option `-o` (`--options`)

For more information, please read https://galeracluster.com/library/documentation/arbitrator.html
