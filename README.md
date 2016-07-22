# hello-api

A tiny hello-world app for testing out deployments etc.

## Ruby

hello-api implemented with Sinatra. Uses [puma](http://puma.io/) as application server.

### Installing and running

```
cd ruby
bundle
sudo bundle exec puma -p 80
```

## Python

Flask-based hello-api.

### Installing and running

```
pip install Flask
FLASK_APP=hello_api.py flask run --host=0.0.0.0
```
