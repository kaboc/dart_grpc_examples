import 'dart:convert';
import 'dart:io';
import 'package:grpc/grpc.dart';
import 'src/pb/chat.pbgrpc.dart';

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    print('Specify your name please.');
    return;
  }

  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure()
    ),
  );

  final client = ChatServiceClient(channel);
  final responses = client.connect(postStream(args[0]));

  try {
    await for (final res in responses) {
      print('[${res.name}] ${res.message}');
    }
  } catch (e) {
    print(e);
    channel.shutdown();
    exit(0);
  }
}

Stream<Post> postStream(String name) async* {
  while (true) {
    final lines = stdin.transform(utf8.decoder).transform(const LineSplitter());

    await for (final line in lines) {
      yield Post()
        ..name = name
        ..message = line;
    }
  }
}
