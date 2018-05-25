## APC Monitoring in Docker

```
docker build -t apc .
docker run --rm -it -v $PWD/apcupsd.conf:/etc/apcupsd/apcupsd.conf --device=/dev/usb/hiddev0 apc
```

Once in the container:

```
apcupsd
# Wait for startup message
apcaccess
```

