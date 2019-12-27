import 'package:args/args.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:unary_greet/src/pb/greet.pbgrpc.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    print('Request from ${request.name.firstName} ${request.name.lastName}');

    final time = DateTime.now();

    final greeting = Greeting()
      ..message = time.hour < 12 ? 'Good Morning' : 'Hi'
      ..names.addAll({
        'first': request.name.firstName,
        'last': request.name.lastName,
      })
      ..time = Int64(time.millisecondsSinceEpoch);
    return HelloReply()..greeting = greeting;
  }
}

Future<void> main(List<String> args) async {
  final parser = ArgParser()..addOption('port', abbr: 'p');
  final results = parser.parse(args);
  final port = toInt(results['port']?.toString()) ?? 50051;

  final server = Server([GreeterService()]);
  await server.serve(port: port);
  print('Server listening on port ${server.port}...');
}

int toInt(String text) {
  return text == null ? null : int.parse(text);
}
