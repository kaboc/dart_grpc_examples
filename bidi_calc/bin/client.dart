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
  } finally {
    await channel.shutdown();
    exit(0);
  }
}

Stream<CalcRequest> requestStream() async* {
  print('Input a numerical value and then press Enter.');

  while (true) {
    final lines = stdin.transform(utf8.decoder).transform(const LineSplitter());

    await for (final line in lines) {
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
  try {
    return Int64.parseInt(text);
  } catch (_) {
    return null;
  }
}
