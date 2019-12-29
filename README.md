# Wordpress under Docker Compose

## Running

```
$ git clone https://github.com/ryanrolds/docker_wordpress.git
$ cd docker_wordpress
$ docker-compose up
```

Visit http://localhost:8000/.

## Notes

The WP files are in `./wp_data` and are ignored by .gitignore. A plugin and theme have been mounted in to the plugins and themes directories. 