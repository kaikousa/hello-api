# hello-api

A tiny hello-world app for testing out deployments etc.

## Ruby

hello-api implemented with Sinatra. Uses [puma](http://puma.io/) as application server.

### Installing and running

**Basic**

```
cd ruby
bundle
sudo bundle exec puma -p 80
```

**Build and run in Docker container**

```
docker build -t helloapi:latest .
docker run -it helloapi
```

## Python

Flask-based hello-api.

### Installing and running

```
pip install Flask
FLASK_APP=hello_api.py flask run --host=0.0.0.0
```
