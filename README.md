# Streamlit as a docker container

## Usage

```
docker run -d -p 8082:8082 -v /path/to/luigi.cfg:/etc/luigi/luigi.cfg -v /path/to/luigi/logs:/var/log/luigi --name luigid datenwissenschaften/luigi
```

## Configuration

The configuration file is located at `/etc/luigi/luigi.cfg`. You can mount a volume to this location to provide your own configuration.

## Logs

The logs are located at `/var/log/luigi`. You can mount a volume to this location to provide your own logs.

## Docker Hub

https://hub.docker.com/r/datenwissenschaften/luigi/
