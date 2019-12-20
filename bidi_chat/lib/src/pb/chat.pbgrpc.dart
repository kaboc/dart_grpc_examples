///
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

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

  ChatServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$0.Post> connect($async.Stream<$0.Post> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$connect, request, options: options);
    return $grpc.ResponseStream(call);
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
