# Wordpress under Docker Compose

Local development environment for WP plugins and themes

The WP files are in `./wp_data` and are ignored by .gitignore. A plugin and theme have been mounted in to the plugins and themes directories. You can give the plugin and theme whatever name you want just make sure to update the `Dockerfile` and `docker-compose.yml` files and restart the `wordpress` service.

## Running

```
$ git clone https://github.com/ryanrolds/docker_wordpress.git
$ cd docker_wordpress
$ docker-compose up
```

Visit http://localhost:8000/.

## Building image

These instructions are only need if you intend to build an image for deployment.

```
$ docker build .
```

Test image:
```
$ docker-compose stop
$ docker-compose up -d db
$ docker run -p 8001:80 --env-file local.env --network wordpress_default
```
