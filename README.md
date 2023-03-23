# Turborepo caching

Turborepo allows to upload cache results to remote server to share caching results among all team members.

By default, turborepo wants to upload cache results to server owned by Vercel, but we can host our own caching server as
long as it conforms to the official APIs.

There is an open-source project which exposes docker container compatible with turborepo APIs, so that we can self-host
our own caching server which is especially useful when we cannot use the solution from Vercel.

Documentation of the project is available [here](https://ducktors.github.io/turborepo-remote-cache/) and the docker
container registry is available [here](https://hub.docker.com/r/ducktors/turborepo-remote-cache).

# Spinning up caching server

I used the following command to start docker container with caching server:

```shell
docker container run -itd --restart always \
  -e TURBO_TOKEN=9de43da7-9958-4d8d-8c91-2b544681eff9 \
  ducktors/turborepo-remote-cache:1.14.0
```

The server starts on port 3000 inside the docker container.
