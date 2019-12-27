# An example of gRPC-Web via grpc-dart

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## How to run this example

Start a server for client-side development by executing the following command in the root folder of this example.

```sh
$ webdev serve
```

Once the server has started, open http://localhost:8080/ in a browser.

## Server

Set up a proxy following the steps in the next section, and then run a gRPC server with the command below.

```sh
$ dart ../unary_greet/lib/server.dart -p 9090
```

`lib/server.dart` of [unary_greet](../unary_greet) is used here too since both examples use the same proto file.

## Proxy

Unlike other examples in this repository, this one uses gRPC-Web that requires a proxy on the server side.

The following settings set up a Docker container with a proxy ([Envoy](https://www.envoyproxy.io/)) in it that listens on the port 50051 of the host machine and proxies to the port 9090, which the server should listen on.

1. Copy `envoy.Dockerfile` and `envoy.yaml` in `proxy_example` to your preferred directory.
2. The value of `address` on the last line of envoy.yaml may need to be changed depending on your environment.
See the README of gRPC-Web's [helloworld](https://github.com/grpc/grpc-web/tree/master/net/grpc/gateway/examples/helloworld) for more information.
3. Build a Docker image by running the following command in the folder where envoy.Dockerfile is located.  
```
$ docker build -t greet/envoy -f ./envoy.Dockerfile .
```
4. Create a container and start it with the command below.
If necessary, change 50051 to another port you want the proxy to listen on.  
```
$ docker run -d -p 50051:8080 --name greet_proxy greet/envoy
```
5. Move back to the root folder of this example and start a server with the port number `9090` passed by the `-p` flag.
Change the number accordingly if you have specified a different one on the last line of your envoy.yaml.  
```
$ dart lib/server.dart -p 9090
```

### Other options for a proxy

You can use some other tools instead as shown in [README](https://www.envoyproxy.io/) of gRPC-Web:

* [NGINX](https://www.nginx.com/)
    * [Here](https://github.com/grpc/grpc-web/blob/master/net/grpc/gateway/examples/echo/nginx.conf) is a sample configuration.
    * See [this post](https://www.nginx.com/blog/nginx-1-13-10-grpc/) for more details.
* [gRPC Web Go Proxy](https://github.com/improbable-eng/grpc-web/tree/master/go/grpcwebproxy)
