///
//  Generated code. Do not modify.
//  source: calc.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'calc.pb.dart' as $0;
export 'calc.pb.dart';

class CalcClient extends $grpc.Client {
  static final _$calculate =
      $grpc.ClientMethod<$0.CalcRequest, $0.CalcResponse>(
          '/calc.Calc/Calculate',
          ($0.CalcRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CalcResponse.fromBuffer(value));

  CalcClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$0.CalcResponse> calculate(
      $async.Stream<$0.CalcRequest> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$calculate, request, options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class CalcServiceBase extends $grpc.Service {
  $core.String get $name => 'calc.Calc';

  CalcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CalcRequest, $0.CalcResponse>(
        'Calculate',
        calculate,
        true,
        true,
        ($core.List<$core.int> value) => $0.CalcRequest.fromBuffer(value),
        ($0.CalcResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.CalcResponse> calculate(
      $grpc.ServiceCall call, $async.Stream<$0.CalcRequest> request);
}
