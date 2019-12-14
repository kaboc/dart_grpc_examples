///
//  Generated code. Do not modify.
//  source: calc.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CalcRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CalcRequest', package: const $pb.PackageName('calc'), createEmptyInstance: create)
    ..aInt64(1, 'number')
    ..hasRequiredFields = false
  ;

  CalcRequest._() : super();
  factory CalcRequest() => create();
  factory CalcRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalcRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CalcRequest clone() => CalcRequest()..mergeFromMessage(this);
  CalcRequest copyWith(void Function(CalcRequest) updates) => super.copyWith((message) => updates(message as CalcRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CalcRequest create() => CalcRequest._();
  CalcRequest createEmptyInstance() => create();
  static $pb.PbList<CalcRequest> createRepeated() => $pb.PbList<CalcRequest>();
  @$core.pragma('dart2js:noInline')
  static CalcRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalcRequest>(create);
  static CalcRequest _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CalcResponse', package: const $pb.PackageName('calc'), createEmptyInstance: create)
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  CalcResponse._() : super();
  factory CalcResponse() => create();
  factory CalcResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalcResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CalcResponse clone() => CalcResponse()..mergeFromMessage(this);
  CalcResponse copyWith(void Function(CalcResponse) updates) => super.copyWith((message) => updates(message as CalcResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CalcResponse create() => CalcResponse._();
  CalcResponse createEmptyInstance() => create();
  static $pb.PbList<CalcResponse> createRepeated() => $pb.PbList<CalcResponse>();
  @$core.pragma('dart2js:noInline')
  static CalcResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalcResponse>(create);
  static CalcResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

