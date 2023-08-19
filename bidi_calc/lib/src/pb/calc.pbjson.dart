//
//  Generated code. Do not modify.
//  source: calc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use calcRequestDescriptor instead')
const CalcRequest$json = {
  '1': 'CalcRequest',
  '2': [
    {'1': 'number', '3': 1, '4': 1, '5': 3, '10': 'number'},
  ],
};

/// Descriptor for `CalcRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calcRequestDescriptor = $convert.base64Decode(
    'CgtDYWxjUmVxdWVzdBIWCgZudW1iZXIYASABKANSBm51bWJlcg==');

@$core.Deprecated('Use calcResponseDescriptor instead')
const CalcResponse$json = {
  '1': 'CalcResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CalcResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calcResponseDescriptor = $convert.base64Decode(
    'CgxDYWxjUmVzcG9uc2USGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');

