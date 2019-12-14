import 'package:grpc/grpc.dart';
import 'package:unary_greet/src/pb/greet.pbgrpc.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    print('Request from ${request.name.firstName} ${request.name.lastName}');

    final greeting = Greeting()
      ..message = DateTime.now().hour < 12 ? 'Good Morning' : 'Hi'
      ..names.addAll({
        'first': request.name.firstName,
        'last': request.name.lastName,
      });
    return HelloReply()..greeting = greeting;
  }
}

Future<void> main() async {
  final server = Server([GreeterService()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
