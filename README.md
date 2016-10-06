# docker-coffee-tor

Docker container to run coffeescript services located in /opt/coffee/app

##Setup with Dockerfile

```Dockerfile
FROM gmelillo/docker-coffee:latest

COPY /path/of/your/app /opt/coffee/app/ 
```
## Run your container with tor and polipo linked

```docker-compose
version: '2'
services:
  tor:
    image: gmelillo/tor:latest
    restart: always
  polipo:
    image: gmelillo/polipo:latest
    depends_on:
      - tor
    links:
      - tor:tor
  app:
    image: yourimage
    restart: always
    links:
      - polipo:polipo
    depends_on:
      - polipo
```

## Exported volumes

- `/opt/coffee/app/`          Application folder.
