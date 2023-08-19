import 'package:grpc/grpc.dart';
import 'package:intl/intl.dart';
import 'package:unary_greet/src/pb/greet.pbgrpc.dart';

Future<void> main() async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(
      credentials: const ChannelCredentials.insecure(),
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );

  final client = GreeterClient(channel);

  final request = HelloRequest()
    ..name = Name(
      firstName: 'Foo',
      lastName: 'Bar',
    );

  try {
    final response = await client.sayHello(
      request,
      options: CallOptions(compression: const GzipCodec()),
    );
    final greet = response.greeting;
    final time = DateTime.fromMillisecondsSinceEpoch(greet.time.toInt());

    print(
      '${greet.message}, ${greet.names['first']} ${greet.names['last']}! '
      "It's ${DateFormat.Hms().format(time)} now.",
    );
  } on Exception catch (e) {
    print('Caught error: $e');
  }

  await channel.shutdown();
}
