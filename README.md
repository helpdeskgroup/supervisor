# Supervisor Docker container
* Alpine 3.4
* Supervisor 3.2.0-r0

## Usage
To use this container, you will need to provide a supervisor configuration file supervisord.conf.

```
docker run -d \
  -v ./config/supervisord.conf:/etc/supervisor/supervisord.conf \
  lwitherington/supervisor
```

In the above example we assume that:

* You mount a volume containing a `supervisord.conf` configration file into the container
* Your `supervisord.conf` should contain at least backend definition like this:

```
[supervisord]
nodaemon=true

[program:yourprogram1]
command=/bin/ash -c "/path/to/your/program"
autorestart=true

[program:yourprogram2]
command=/bin/ash -c "/path/to/your/program"
autorestart=true
```

## Environmental variables
You can configure Supervisor daemon by following env variables:
```
* SUPERVISOR_CONF_FILE /etc/supervisor/supervisord.conf
```

## Author
* helpdeskgroup (<helpdeskgroup@helpme.net>)
