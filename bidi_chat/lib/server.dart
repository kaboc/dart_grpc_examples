import 'dart:async';
import 'package:args/args.dart';
import 'package:grpc/grpc.dart';
import 'package:chat/src/pb/chat.pbgrpc.dart';

class ChatService extends ChatServiceBase {
  final _controllers = <StreamController<Post>, void>{};

  @override
  Stream<Post> connect(ServiceCall call, Stream<Post> request) async* {
    print('Connected: #${request.hashCode}');

    final clientController = StreamController<Post>();
    _controllers[clientController] = null;

    request.listen((req) {
      print('Request from ${req.name} (#${request.hashCode})');

      _controllers.forEach((controller, _) {
        if (controller != clientController) {
          controller.sink.add(req);
        }
      });
    }).onError((dynamic e) {
      print(e);

      _controllers.remove(clientController);
      clientController.close();
      print('Disconnected: #${request.hashCode}');
    });

    await for (final req in clientController.stream) {
      print('  -> piped to #${request.hashCode}');

      yield Post()
        ..name = req.name
        ..message = req.message;
    }
  }
}

Future<void> main(List<String> args) async {
  final parser = ArgParser()..addOption('port', abbr: 'p');
  final results = parser.parse(args);
  final port = toInt(results['port']?.toString()) ?? 50051;

  final server = Server([ChatService()]);
  await server.serve(port: port);
  print('Server listening on port ${server.port}...');
}

int toInt(String text) {
  return text == null ? null : int.parse(text);
}
