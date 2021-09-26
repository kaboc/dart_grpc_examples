///
//  Generated code. Do not modify.
//  source: greet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use nameDescriptor instead')
const Name$json = const {
  '1': 'Name',
  '2': const [
    const {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
  ],
};

/// Descriptor for `Name`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nameDescriptor = $convert.base64Decode('CgROYW1lEh0KCmZpcnN0X25hbWUYASABKAlSCWZpcnN0TmFtZRIbCglsYXN0X25hbWUYAiABKAlSCGxhc3ROYW1l');
@$core.Deprecated('Use greetingDescriptor instead')
const Greeting$json = const {
  '1': 'Greeting',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'names', '3': 2, '4': 3, '5': 11, '6': '.greet.Greeting.NamesEntry', '10': 'names'},
    const {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
  ],
  '3': const [Greeting_NamesEntry$json],
};

@$core.Deprecated('Use greetingDescriptor instead')
const Greeting_NamesEntry$json = const {
  '1': 'NamesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Greeting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List greetingDescriptor = $convert.base64Decode('CghHcmVldGluZxIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEjAKBW5hbWVzGAIgAygLMhouZ3JlZXQuR3JlZXRpbmcuTmFtZXNFbnRyeVIFbmFtZXMSEgoEdGltZRgDIAEoA1IEdGltZRo4CgpOYW1lc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use helloRequestDescriptor instead')
const HelloRequest$json = const {
  '1': 'HelloRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 11, '6': '.greet.Name', '10': 'name'},
  ],
};

/// Descriptor for `HelloRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloRequestDescriptor = $convert.base64Decode('CgxIZWxsb1JlcXVlc3QSHwoEbmFtZRgBIAEoCzILLmdyZWV0Lk5hbWVSBG5hbWU=');
@$core.Deprecated('Use helloReplyDescriptor instead')
const HelloReply$json = const {
  '1': 'HelloReply',
  '2': const [
    const {'1': 'greeting', '3': 1, '4': 1, '5': 11, '6': '.greet.Greeting', '10': 'greeting'},
  ],
};

/// Descriptor for `HelloReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloReplyDescriptor = $convert.base64Decode('CgpIZWxsb1JlcGx5EisKCGdyZWV0aW5nGAEgASgLMg8uZ3JlZXQuR3JlZXRpbmdSCGdyZWV0aW5n');
