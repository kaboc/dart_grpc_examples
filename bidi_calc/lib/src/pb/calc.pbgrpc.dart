//
//  Generated code. Do not modify.
//  source: calc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'calc.pb.dart' as $0;

export 'calc.pb.dart';

@$pb.GrpcServiceName('calc.Calc')
class CalcClient extends $grpc.Client {
  static final _$calculate = $grpc.ClientMethod<$0.CalcRequest, $0.CalcResponse>(
      '/calc.Calc/Calculate',
      ($0.CalcRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CalcResponse.fromBuffer(value));

  CalcClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.CalcResponse> calculate($async.Stream<$0.CalcRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$calculate, request, options: options);
  }
}

@$pb.GrpcServiceName('calc.Calc')
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

  $async.Stream<$0.CalcResponse> calculate($grpc.ServiceCall call, $async.Stream<$0.CalcRequest> request);
}
