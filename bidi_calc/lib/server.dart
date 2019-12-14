import 'package:grpc/grpc.dart';
import 'package:bidi_calc/src/pb/calc.pbgrpc.dart';

class CalcService extends CalcServiceBase {
  @override
  Stream<CalcResponse> calculate(ServiceCall call, Stream<CalcRequest> request) async* {
    final numbers = <int>[];

    await for (final req in request) {
      print('Received: ${req.number}');

      numbers.add(req.number.toInt());
      final sum = numbers.reduce((a, b) => a + b);
      final avg = sum / numbers.length;

      yield CalcResponse()..message = numbers.toString();
      await _wait();
      yield CalcResponse()..message = 'Total: $sum';
      await _wait();
      yield CalcResponse()..message = 'Average: $avg';
    }
  }

  Future<void> _wait() async {
    return await Future.delayed(const Duration(milliseconds: 100));
  }
}

Future<void> main() async {
  final server = Server([CalcService()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
