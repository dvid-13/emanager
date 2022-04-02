# eManager
[![Creado por BJG Ingenieros](https://bjgingenieros.com/wp-content/uploads/2022/04/logo-e1648933452913.png)](https://bjgingenieros.com)
## Docker

### Servicios necesarios

| Servicios | Docker Hub links |
| ------ | ------ |
| InfluxDB | [InfluxDB 1.8.10](https://hub.docker.com/_/influxdb) |
| InfluxDB | [Grafana 8.4.5](https://hub.docker.com/r/grafana/grafana) |
| Node-RED | [Node-RED 2.2.2](https://hub.docker.com/r/nodered/node-red) |
| EMQX | [EMQX 3.0.1](https://hub.docker.com/r/emqx/emqx) |
| Mosquitto | [Eclipse Mosquitto 2.0.14](https://hub.docker.com/_/eclipse-mosquitto) |

### Instalar *Docker* en el eManager: 

```sh
opkg install docker-ce
opkg install python3-docker-compose
```


### Instalar *git*:

```sh
opkg install git
```

### Descarga el repositorio de *GitHub*

```sh
git clone https://github.com/dvid-13/eManager.git
```
*A continuación, ingrese los datos de GutHub*

### Agregar permisos necesarios para el docker-compose:

```sh
chmod -R 777 emanager
```

### Ingresar a la carpeta creada

```sh
cd emanager
```

### Crear imagen para el servicio *Node-RED*

```sh
docker build -t node-red-a:1.0 .
```

### Defina el servicio que necesita para *mqtt*, ya sea *EMQX* o *Mosquitto*

```sh
nano docker-compose.yml
```
*A continuación, edite los # que aparecen al inicio de cada uno de estos servicios, siendo excluyentes entre ellos, es decir,*
