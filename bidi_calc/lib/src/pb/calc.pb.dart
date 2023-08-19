//
//  Generated code. Do not modify.
//  source: calc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CalcRequest extends $pb.GeneratedMessage {
  factory CalcRequest({
    $fixnum.Int64? number,
  }) {
    final $result = create();
    if (number != null) {
      $result.number = number;
    }
    return $result;
  }
  CalcRequest._() : super();
  factory CalcRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalcRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalcRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'calc'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'number')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalcRequest clone() => CalcRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalcRequest copyWith(void Function(CalcRequest) updates) => super.copyWith((message) => updates(message as CalcRequest)) as CalcRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalcRequest create() => CalcRequest._();
  CalcRequest createEmptyInstance() => create();
  static $pb.PbList<CalcRequest> createRepeated() => $pb.PbList<CalcRequest>();
  @$core.pragma('dart2js:noInline')
  static CalcRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalcRequest>(create);
  static CalcRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get number => $_getI64(0);
  @$pb.TagNumber(1)
  set number($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);
}

class CalcResponse extends $pb.GeneratedMessage {
  factory CalcResponse({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  CalcResponse._() : super();
  factory CalcResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalcResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalcResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'calc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalcResponse clone() => CalcResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalcResponse copyWith(void Function(CalcResponse) updates) => super.copyWith((message) => updates(message as CalcResponse)) as CalcResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalcResponse create() => CalcResponse._();
  CalcResponse createEmptyInstance() => create();
  static $pb.PbList<CalcResponse> createRepeated() => $pb.PbList<CalcResponse>();
  @$core.pragma('dart2js:noInline')
  static CalcResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalcResponse>(create);
  static CalcResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
