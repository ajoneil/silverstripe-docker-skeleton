Skeleton project for using SilverStripe with Docker.

Uses official PHP, MySQL, and Composer images. `Dockerfile` + `docker-compose.yml`
should be able to be lifted and used in any SilverStripe project with little changes.

## Usage:

### Bringing the web server up
You can start the web server and mysql with:
```bash
docker-compose up web
```

The web server should be available on `localhost:80`.

### Composer
Composer commands should be run using the `composer` service:
```bash
docker-compose run composer install
```
