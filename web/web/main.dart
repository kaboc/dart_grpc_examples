import 'dart:html';
import 'package:grpc/grpc_web.dart';
import 'package:intl/intl.dart';
import 'package:web/src/pb/greet.pbgrpc.dart';

Future<void> main() async {
  final button = querySelector('button') as ButtonElement?;
  final name = querySelector('input[name=name]') as InputElement?;

  button?.onClick.listen((_) async {
    final value = name?.value;
    if (value == null || value.isEmpty) {
      return;
    }

    addMessage(value, 'Hi!');
    await greet(value);
  });
}

Future<void> greet(String name) async {
  final channel = GrpcWebClientChannel.xhr(Uri.parse('http://localhost:50051'));
  final client = GreeterClient(channel);

  final request = HelloRequest(
    name: Name(firstName: name),
  );

  try {
    final response = await client.sayHello(request);
    final greet = response.greeting;
    final time = DateTime.fromMillisecondsSinceEpoch(greet.time.toInt());

    addMessage(
      'Server',
      '${greet.message}, ${greet.names['first']}! '
          "It's ${DateFormat.Hms().format(time)} now.",
    );
  } on Exception catch (e) {
    window.alert(e.toString());
  }

  await channel.shutdown();
}

void addMessage(String name, String message) {
  final messageList = querySelector('#msg-list');
  if (messageList != null) {
    final newMessage = LIElement()..text = '[$name] $message';
    messageList.children.add(newMessage);
  }
}
