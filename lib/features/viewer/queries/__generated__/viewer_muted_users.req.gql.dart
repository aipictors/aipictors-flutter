// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aipictors/__generated__/serializers.gql.dart' as _i6;
import 'package:aipictors/features/viewer/queries/__generated__/viewer_muted_users.ast.gql.dart'
    as _i5;
import 'package:aipictors/features/viewer/queries/__generated__/viewer_muted_users.data.gql.dart'
    as _i2;
import 'package:aipictors/features/viewer/queries/__generated__/viewer_muted_users.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'viewer_muted_users.req.gql.g.dart';

abstract class GViewerMutedUsersReq
    implements
        Built<GViewerMutedUsersReq, GViewerMutedUsersReqBuilder>,
        _i1.OperationRequest<_i2.GViewerMutedUsersData,
            _i3.GViewerMutedUsersVars> {
  GViewerMutedUsersReq._();

  factory GViewerMutedUsersReq(
          [void Function(GViewerMutedUsersReqBuilder b) updates]) =
      _$GViewerMutedUsersReq;

  static void _initializeBuilder(GViewerMutedUsersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ViewerMutedUsers',
    )
    ..executeOnListen = true;

  @override
  _i3.GViewerMutedUsersVars get vars;
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
  _i2.GViewerMutedUsersData? Function(
    _i2.GViewerMutedUsersData?,
    _i2.GViewerMutedUsersData?,
  )? get updateResult;
  @override
  _i2.GViewerMutedUsersData? get optimisticResponse;
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
  _i2.GViewerMutedUsersData? parseData(Map<String, dynamic> json) =>
      _i2.GViewerMutedUsersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GViewerMutedUsersData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GViewerMutedUsersData, _i3.GViewerMutedUsersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GViewerMutedUsersReq> get serializer =>
      _$gViewerMutedUsersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GViewerMutedUsersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerMutedUsersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GViewerMutedUsersReq.serializer,
        json,
      );
}
