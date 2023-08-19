import 'package:args/args.dart';
import 'package:grpc/grpc.dart';
import 'package:bidi_calc/src/pb/calc.pbgrpc.dart';

class CalcService extends CalcServiceBase {
  @override
  Stream<CalcResponse> calculate(
    ServiceCall call,
    Stream<CalcRequest> request,
  ) async* {
    final numbers = <int>[];

    await for (final req in request) {
      print('Received: ${req.number}');

      numbers.add(req.number.toInt());
      final sum = numbers.reduce((a, b) => a + b);
      final avg = sum / numbers.length;

      yield CalcResponse(message: '$numbers');
      await _wait();
      yield CalcResponse(message: 'Total: $sum');
      await _wait();
      yield CalcResponse(message: 'Average: $avg');
    }
  }

  Future<void> _wait() {
    return Future.delayed(const Duration(milliseconds: 100));
  }
}

Future<void> main(List<String> args) async {
  final parser = ArgParser()..addOption('port', abbr: 'p');
  final results = parser.parse(args);
  final port = toInt(results['port']?.toString()) ?? 50051;

  final server = Server.create(services: [CalcService()]);
  await server.serve(port: port);
  print('Server listening on port ${server.port}...');
}

int? toInt(String? text) {
  return text == null ? null : int.parse(text);
}
