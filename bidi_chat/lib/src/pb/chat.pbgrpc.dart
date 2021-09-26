///
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'chat.pb.dart' as $0;
export 'chat.pb.dart';

class ChatServiceClient extends $grpc.Client {
  static final _$connect = $grpc.ClientMethod<$0.Post, $0.Post>(
      '/chat.ChatService/Connect',
      ($0.Post value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Post.fromBuffer(value));

  ChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Post> connect($async.Stream<$0.Post> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$connect, request, options: options);
  }
}

abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'chat.ChatService';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Post, $0.Post>(
        'Connect',
        connect,
        true,
        true,
        ($core.List<$core.int> value) => $0.Post.fromBuffer(value),
        ($0.Post value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Post> connect(
      $grpc.ServiceCall call, $async.Stream<$0.Post> request);
}
