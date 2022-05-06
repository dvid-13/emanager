FROM nodered/node-red:2.2.2-12

RUN npm install \
    node-red-dashboard \
    node-red-contrib-influxdb \
    node-red-contrib-s7 \
    @node-red-contrib-themes/dracula \
    node-red-contrib-modbus \
    ncd-red-wireless-2

EXPOSE 1880
