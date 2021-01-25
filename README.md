# hello-api

A tiny hello-world app for testing out deployments.

```
docker run -it kaikousa/hello
```

## Installing and running

**Run locally**

```
cd ruby
bundle
sudo bundle exec puma -p 80
```

**Build and run in a Docker container**

```
make build
make run
```

## Stack

hello-api is implemented with Sinatra. Uses [puma](http://puma.io/) as application server.