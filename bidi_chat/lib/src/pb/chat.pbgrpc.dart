//
//  Generated code. Do not modify.
//  source: chat.proto
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

import 'chat.pb.dart' as $0;

export 'chat.pb.dart';

@$pb.GrpcServiceName('chat.ChatService')
class ChatServiceClient extends $grpc.Client {
  static final _$connect = $grpc.ClientMethod<$0.Post, $0.Post>(
      '/chat.ChatService/Connect',
      ($0.Post value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Post.fromBuffer(value));

  ChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.Post> connect($async.Stream<$0.Post> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$connect, request, options: options);
  }
}

@$pb.GrpcServiceName('chat.ChatService')
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

  $async.Stream<$0.Post> connect($grpc.ServiceCall call, $async.Stream<$0.Post> request);
}
