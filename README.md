# Simple examples of how to use [grpc-dart](https://github.com/grpc/grpc-dart)

* [unary_greet](./unary_greet)
    * An example of Unary RPCs similar to the official [helloworld](https://github.com/grpc/grpc-dart/tree/master/example/helloworld) but with more info exchanged  
![Screencast of unary_greet](./doc/images/unary_greet.gif)

* [bidi_calc](./bidi_calc)
    * An example of Bidirectional streaming RPCs  
![Screencast of bidi_calc](./doc/images/bidi_calc.gif)

* [bidi_chat](./bidi_chat)
    * An example of broadcast from a server to multiple clients by Bidirectional streaming RPCs
    * A nickname needs to be provided when you run bin/client.dart.  
![Screencast of bidi_chat](./doc/images/bidi_chat.gif)

* [web](./web)
    * An example of unary_greet using gRPC-Web via grpc-dart.
    * A proxy to a server is necessary. See [README](./web/README.md) of the sample.  
![Screencast of web](./doc/images/web.gif)

## Related articles

* [DartでgRPCを使う](https://qiita.com/kabochapo/items/6848457ea7a966baf957)
    * Refer to this post for detailed explanations (Japanese).
