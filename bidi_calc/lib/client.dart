import 'dart:convert';
import 'dart:io';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:bidi_calc/src/pb/calc.pbgrpc.dart';

Future<void> main() async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final client = CalcClient(channel);
  final responses = client.calculate(requestStream());

  try {
    await for (final res in responses) {
      print(res.message);
    }
  } catch (e) {
    print(e);
  }

  await channel.shutdown();
}

Stream<CalcRequest> requestStream() async* {
  print('Input a numerical value and then press Enter.');
  print('Or press just Enter to quit.');

  outerLoop:
  while (true) {
    final lines = stdin.transform(utf8.decoder).transform(const LineSplitter());

    await for (final line in lines) {
      if (line.isEmpty) {
        break outerLoop;
      }

      final num = toInt(line);
      if (num == null) {
        print('Input a value correctly');
      } else {
        yield CalcRequest()..number = num;
      }
    }
  }
}

Int64 toInt(String text) {
  return text == null ? null : Int64.parseInt(text);
}
