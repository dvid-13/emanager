# eManager
[![Creado por BJG Ingenieros](https://bjgingenieros.com/wp-content/uploads/2022/04/logo-e1648933452913.png)](https://bjgingenieros.com)
------------

## Docker


### Servicios necesarios

| Servicios | Docker Hub links |
| ------ | ------ |
| InfluxDB | [InfluxDB 1.8.10](https://hub.docker.com/_/influxdb) |
| Grafana | [Grafana 8.4.5](https://hub.docker.com/r/grafana/grafana) |
| Node-RED | [Node-RED 2.2.2](https://hub.docker.com/r/nodered/node-red) [eManager](https://hub.docker.com/r/dmunozbjg/node-red-a) |
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
git clone https://github.com/dvid-13/emanager.git
```
*A continuación, ingrese los datos de GitHub*

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
docker build -t dmunozbjg/node-red-a:1.0 .
```
*Este paso no es necesario*

### Defina el servicio que necesita para *mqtt*, ya sea *EMQX* o *Mosquitto*

```sh
nano docker-compose.yml
```
*A continuación, edite los # que aparecen al inicio de cada uno de estos servicios,
siendo excluyentes entre ellos, es decir, si habilita Mosquitto, deshabilite EMQX*

### Corra los servicios con *docker-compose*

```sh
docker-compose up -d
```
*Los servicios tardan un tiempo en iniciar, de 5 a 10 minutos, una vez transcurrido el tiempo,
verifique que los servicios estén corriendo*

### Comprobación de servicios
Se debe ingresar la dirección seguida del puerto en que esté el servicio corriendo

Ejemplo: 
http://10.1.10.10:3000

| Servicios | Puerto por defecto |
| ------ | ------ |
| InfluxDB | [8086](http://10.1.10.10:8086) |
| Grafana | [3000](http://10.1.10.10:3000)  |
| Node-RED | [1882](http://10.1.10.10:1882) |
| EMQX | [18083](http://10.1.10.10:18083)   |
| Mosquitto | No posee |

### Crear base de datos para *InfluxDB*

Es necesario crear la base de datos que se usa por defecto en *Node-RED* con el siguiente comando:

```sh
docker exec -it influxdb influx -execute 'CREATE DATABASE data'
docker exec -it influxdb influx -execute 'SHOW DATABASES'
```
*El 'data' es el nombre de la base de datos, la cual se usa en distintas queries y nodos de Node-RED*

### Editar servicios

Una vez creado los servicios, se pueden editar la programación de Node-RED y a los dashboards de Grafana ingresando los [puertos predeterminados](https://github.com/dvid-13/eManager/blob/master/README.md#comprobaci%C3%B3n-de-servicios) según convenga.



