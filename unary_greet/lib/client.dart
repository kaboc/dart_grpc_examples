import 'package:grpc/grpc.dart';
import 'package:unary_greet/src/pb/greet.pbgrpc.dart';

Future<void> main() async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final client = GreeterClient(channel);

  final request = HelloRequest();
  request.name = Name()
    ..firstName = 'Foo'
    ..lastName = 'Bar';

  try {
    final response = await client.sayHello(request);
    final greet = response.greeting;
    print('${greet.message}, ${greet.names['first']}!');
  } catch (e) {
    print('Caught error: $e');
  }

  await channel.shutdown();
}
