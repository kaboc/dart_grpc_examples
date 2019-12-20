import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:chat/src/pb/chat.pbgrpc.dart';

class ChatService extends ChatServiceBase {
  final _controllers = <StreamController<Post>, void>{};

  @override
  Stream<Post> connect(ServiceCall call, Stream<Post> request) async* {
    print('Connected: #${request.hashCode}');

    final myController = StreamController<Post>();
    _controllers[myController] = null;

    request.listen((req) {
      print('Request from ${req.name} (#${request.hashCode})');

      _controllers.forEach((c, _) {
        if (c != myController) {
          c.sink.add(req);
        }
      });
    }).onError((dynamic e) {
      print(e);

      _controllers.remove(myController);
      myController.close();
      print('Disconnected: #${request.hashCode}');
    });

    await for (final req in myController.stream) {
      print('  -> piped to #${request.hashCode}');

      yield Post()
        ..name = req.name
        ..message = req.message;
    }
  }
}

Future<void> main() async {
  final server = Server([ChatService()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
