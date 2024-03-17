// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aipictors/__generated__/serializers.gql.dart' as _i6;
import 'package:aipictors/graphql/mutations/__generated__/update_work.ast.gql.dart'
    as _i5;
import 'package:aipictors/graphql/mutations/__generated__/update_work.data.gql.dart'
    as _i2;
import 'package:aipictors/graphql/mutations/__generated__/update_work.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'update_work.req.gql.g.dart';

abstract class GUpdateWorkReq
    implements
        Built<GUpdateWorkReq, GUpdateWorkReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateWorkData, _i3.GUpdateWorkVars> {
  GUpdateWorkReq._();

  factory GUpdateWorkReq([void Function(GUpdateWorkReqBuilder b) updates]) =
      _$GUpdateWorkReq;

  static void _initializeBuilder(GUpdateWorkReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateWork',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateWorkVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GUpdateWorkData? Function(
    _i2.GUpdateWorkData?,
    _i2.GUpdateWorkData?,
  )? get updateResult;
  @override
  _i2.GUpdateWorkData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GUpdateWorkData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateWorkData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateWorkData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateWorkData, _i3.GUpdateWorkVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateWorkReq> get serializer =>
      _$gUpdateWorkReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateWorkReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateWorkReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateWorkReq.serializer,
        json,
      );
}
