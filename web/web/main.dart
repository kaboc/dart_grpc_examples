import 'dart:html';
import 'package:grpc/grpc_web.dart';
import 'package:intl/intl.dart';
import 'package:web/src/pb/greet.pbgrpc.dart';

Future<void> main() async {
  final ButtonElement button = querySelector('button');
  final InputElement name = querySelector('input[name=name]');

  button.onClick.listen((_) async {
    if (name.value.isEmpty) {
      return;
    }

    addMessage(name.value, 'Hi!');
    await greet(name.value);
  });
}

Future<void> greet(String name) async {
  final channel = GrpcWebClientChannel.xhr(Uri.parse('http://localhost:50051'));
  final client = GreeterClient(channel);

  final request = HelloRequest();
  request.name = Name()..firstName = name;

  try {
    final response = await client.sayHello(request);
    final greet = response.greeting;
    final time = DateTime.fromMillisecondsSinceEpoch(greet.time.toInt());

    addMessage(
      'Server',
      '${greet.message}, ${greet.names['first']}! '
          "It's ${DateFormat.Hms().format(time)} now.",
    );
  } catch (e) {
    window.alert(e.toString());
  }

  await channel.shutdown();
}

void addMessage(String name, String message) {
  final newMessage = LIElement()..text = '[$name] $message';

  final UListElement messageList = querySelector('#msg-list');
  messageList.children.add(newMessage);
}
