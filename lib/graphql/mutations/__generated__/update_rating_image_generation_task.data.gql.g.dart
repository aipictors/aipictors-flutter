// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_rating_image_generation_task.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateRatingImageGenerationTaskData>
    _$gUpdateRatingImageGenerationTaskDataSerializer =
    new _$GUpdateRatingImageGenerationTaskDataSerializer();
Serializer<GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask>
    _$gUpdateRatingImageGenerationTaskDataUpdateRatingImageGenerationTaskSerializer =
    new _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskSerializer();
Serializer<
        GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model>
    _$gUpdateRatingImageGenerationTaskDataUpdateRatingImageGenerationTaskModelSerializer =
    new _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelSerializer();

class _$GUpdateRatingImageGenerationTaskDataSerializer
    implements StructuredSerializer<GUpdateRatingImageGenerationTaskData> {
  @override
  final Iterable<Type> types = const [
    GUpdateRatingImageGenerationTaskData,
    _$GUpdateRatingImageGenerationTaskData
  ];
  @override
  final String wireName = 'GUpdateRatingImageGenerationTaskData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateRatingImageGenerationTaskData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateRatingImageGenerationTask',
      serializers.serialize(object.updateRatingImageGenerationTask,
          specifiedType: const FullType(
              GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask)),
    ];

    return result;
  }

  @override
  GUpdateRatingImageGenerationTaskData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateRatingImageGenerationTaskDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updateRatingImageGenerationTask':
          result.updateRatingImageGenerationTask.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask))!
              as GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskSerializer
    implements
        StructuredSerializer<
            GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask> {
  @override
  final Iterable<Type> types = const [
    GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask,
    _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask
  ];
  @override
  final String wireName =
      'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'prompt',
      serializers.serialize(object.prompt,
          specifiedType: const FullType(String)),
      'negativePrompt',
      serializers.serialize(object.negativePrompt,
          specifiedType: const FullType(String)),
      'seed',
      serializers.serialize(object.seed, specifiedType: const FullType(double)),
      'steps',
      serializers.serialize(object.steps, specifiedType: const FullType(int)),
      'scale',
      serializers.serialize(object.scale, specifiedType: const FullType(int)),
      'sampler',
      serializers.serialize(object.sampler,
          specifiedType: const FullType(String)),
      'clipSkip',
      serializers.serialize(object.clipSkip,
          specifiedType: const FullType(int)),
      'sizeType',
      serializers.serialize(object.sizeType,
          specifiedType: const FullType(_i3.GImageGenerationSizeType)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i3.GImageGenerationStatus)),
      'isDeleted',
      serializers.serialize(object.isDeleted,
          specifiedType: const FullType(bool)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'generationType',
      serializers.serialize(object.generationType,
          specifiedType: const FullType(_i3.GImageGenerationType)),
      'model',
      serializers.serialize(object.model,
          specifiedType: const FullType(
              GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model)),
    ];
    Object? value;
    value = object.t2tImageUrl;
    if (value != null) {
      result
        ..add('t2tImageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.t2tMaskImageUrl;
    if (value != null) {
      result
        ..add('t2tMaskImageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.t2tDenoisingStrengthSize;
    if (value != null) {
      result
        ..add('t2tDenoisingStrengthSize')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.t2tInpaintingFillSize;
    if (value != null) {
      result
        ..add('t2tInpaintingFillSize')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isProtected;
    if (value != null) {
      result
        ..add('isProtected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.vae;
    if (value != null) {
      result
        ..add('vae')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nanoid;
    if (value != null) {
      result
        ..add('nanoid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estimatedSeconds;
    if (value != null) {
      result
        ..add('estimatedSeconds')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.controlNetControlMode;
    if (value != null) {
      result
        ..add('controlNetControlMode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.controlNetEnabled;
    if (value != null) {
      result
        ..add('controlNetEnabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.controlNetGuidanceEnd;
    if (value != null) {
      result
        ..add('controlNetGuidanceEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.controlNetGuidanceStart;
    if (value != null) {
      result
        ..add('controlNetGuidanceStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.controlNetPixelPerfect;
    if (value != null) {
      result
        ..add('controlNetPixelPerfect')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.controlNetProcessorRes;
    if (value != null) {
      result
        ..add('controlNetProcessorRes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.controlNetResizeMode;
    if (value != null) {
      result
        ..add('controlNetResizeMode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.controlNetThresholdA;
    if (value != null) {
      result
        ..add('controlNetThresholdA')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.controlNetThresholdB;
    if (value != null) {
      result
        ..add('controlNetThresholdB')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.controlNetWeight;
    if (value != null) {
      result
        ..add('controlNetWeight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.controlNetModule;
    if (value != null) {
      result
        ..add('controlNetModule')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.controlNetModel;
    if (value != null) {
      result
        ..add('controlNetModel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.controlNetSaveDetectedMap;
    if (value != null) {
      result
        ..add('controlNetSaveDetectedMap')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.controlNetHrOption;
    if (value != null) {
      result
        ..add('controlNetHrOption')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.upscaleSize;
    if (value != null) {
      result
        ..add('upscaleSize')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.imageFileName;
    if (value != null) {
      result
        ..add('imageFileName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnailImageFileName;
    if (value != null) {
      result
        ..add('thumbnailImageFileName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnailToken;
    if (value != null) {
      result
        ..add('thumbnailToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'prompt':
          result.prompt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'negativePrompt':
          result.negativePrompt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'seed':
          result.seed = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'steps':
          result.steps = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'scale':
          result.scale = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sampler':
          result.sampler = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'clipSkip':
          result.clipSkip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sizeType':
          result.sizeType = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GImageGenerationSizeType))!
              as _i3.GImageGenerationSizeType;
          break;
        case 't2tImageUrl':
          result.t2tImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 't2tMaskImageUrl':
          result.t2tMaskImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 't2tDenoisingStrengthSize':
          result.t2tDenoisingStrengthSize = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 't2tInpaintingFillSize':
          result.t2tInpaintingFillSize = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'completedAt':
          result.completedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GImageGenerationStatus))!
              as _i3.GImageGenerationStatus;
          break;
        case 'isDeleted':
          result.isDeleted = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isProtected':
          result.isProtected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'generationType':
          result.generationType = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GImageGenerationType))!
              as _i3.GImageGenerationType;
          break;
        case 'model':
          result.model.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model))!
              as GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model);
          break;
        case 'vae':
          result.vae = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nanoid':
          result.nanoid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'estimatedSeconds':
          result.estimatedSeconds = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'controlNetControlMode':
          result.controlNetControlMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'controlNetEnabled':
          result.controlNetEnabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'controlNetGuidanceEnd':
          result.controlNetGuidanceEnd = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'controlNetGuidanceStart':
          result.controlNetGuidanceStart = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'controlNetPixelPerfect':
          result.controlNetPixelPerfect = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'controlNetProcessorRes':
          result.controlNetProcessorRes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'controlNetResizeMode':
          result.controlNetResizeMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'controlNetThresholdA':
          result.controlNetThresholdA = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'controlNetThresholdB':
          result.controlNetThresholdB = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'controlNetWeight':
          result.controlNetWeight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'controlNetModule':
          result.controlNetModule = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'controlNetModel':
          result.controlNetModel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'controlNetSaveDetectedMap':
          result.controlNetSaveDetectedMap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'controlNetHrOption':
          result.controlNetHrOption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'upscaleSize':
          result.upscaleSize = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'imageFileName':
          result.imageFileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnailImageFileName':
          result.thumbnailImageFileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnailToken':
          result.thumbnailToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelSerializer
    implements
        StructuredSerializer<
            GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model> {
  @override
  final Iterable<Type> types = const [
    GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model,
    _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model
  ];
  @override
  final String wireName =
      'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateRatingImageGenerationTaskData
    extends GUpdateRatingImageGenerationTaskData {
  @override
  final String G__typename;
  @override
  final GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask
      updateRatingImageGenerationTask;

  factory _$GUpdateRatingImageGenerationTaskData(
          [void Function(GUpdateRatingImageGenerationTaskDataBuilder)?
              updates]) =>
      (new GUpdateRatingImageGenerationTaskDataBuilder()..update(updates))
          ._build();

  _$GUpdateRatingImageGenerationTaskData._(
      {required this.G__typename,
      required this.updateRatingImageGenerationTask})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateRatingImageGenerationTaskData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateRatingImageGenerationTask,
        r'GUpdateRatingImageGenerationTaskData',
        'updateRatingImageGenerationTask');
  }

  @override
  GUpdateRatingImageGenerationTaskData rebuild(
          void Function(GUpdateRatingImageGenerationTaskDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateRatingImageGenerationTaskDataBuilder toBuilder() =>
      new GUpdateRatingImageGenerationTaskDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateRatingImageGenerationTaskData &&
        G__typename == other.G__typename &&
        updateRatingImageGenerationTask ==
            other.updateRatingImageGenerationTask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateRatingImageGenerationTask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateRatingImageGenerationTaskData')
          ..add('G__typename', G__typename)
          ..add('updateRatingImageGenerationTask',
              updateRatingImageGenerationTask))
        .toString();
  }
}

class GUpdateRatingImageGenerationTaskDataBuilder
    implements
        Builder<GUpdateRatingImageGenerationTaskData,
            GUpdateRatingImageGenerationTaskDataBuilder> {
  _$GUpdateRatingImageGenerationTaskData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder?
      _updateRatingImageGenerationTask;
  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder
      get updateRatingImageGenerationTask => _$this
              ._updateRatingImageGenerationTask ??=
          new GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder();
  set updateRatingImageGenerationTask(
          GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder?
              updateRatingImageGenerationTask) =>
      _$this._updateRatingImageGenerationTask = updateRatingImageGenerationTask;

  GUpdateRatingImageGenerationTaskDataBuilder() {
    GUpdateRatingImageGenerationTaskData._initializeBuilder(this);
  }

  GUpdateRatingImageGenerationTaskDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateRatingImageGenerationTask =
          $v.updateRatingImageGenerationTask.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateRatingImageGenerationTaskData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateRatingImageGenerationTaskData;
  }

  @override
  void update(
      void Function(GUpdateRatingImageGenerationTaskDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateRatingImageGenerationTaskData build() => _build();

  _$GUpdateRatingImageGenerationTaskData _build() {
    _$GUpdateRatingImageGenerationTaskData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateRatingImageGenerationTaskData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUpdateRatingImageGenerationTaskData', 'G__typename'),
              updateRatingImageGenerationTask:
                  updateRatingImageGenerationTask.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateRatingImageGenerationTask';
        updateRatingImageGenerationTask.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateRatingImageGenerationTaskData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask
    extends GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String prompt;
  @override
  final String negativePrompt;
  @override
  final double seed;
  @override
  final int steps;
  @override
  final int scale;
  @override
  final String sampler;
  @override
  final int clipSkip;
  @override
  final _i3.GImageGenerationSizeType sizeType;
  @override
  final String? t2tImageUrl;
  @override
  final String? t2tMaskImageUrl;
  @override
  final String? t2tDenoisingStrengthSize;
  @override
  final String? t2tInpaintingFillSize;
  @override
  final int? rating;
  @override
  final int? completedAt;
  @override
  final _i3.GImageGenerationStatus status;
  @override
  final bool isDeleted;
  @override
  final bool? isProtected;
  @override
  final int count;
  @override
  final _i3.GImageGenerationType generationType;
  @override
  final GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model
      model;
  @override
  final String? vae;
  @override
  final String? nanoid;
  @override
  final int? estimatedSeconds;
  @override
  final String? controlNetControlMode;
  @override
  final bool? controlNetEnabled;
  @override
  final double? controlNetGuidanceEnd;
  @override
  final double? controlNetGuidanceStart;
  @override
  final bool? controlNetPixelPerfect;
  @override
  final int? controlNetProcessorRes;
  @override
  final String? controlNetResizeMode;
  @override
  final int? controlNetThresholdA;
  @override
  final int? controlNetThresholdB;
  @override
  final double? controlNetWeight;
  @override
  final String? controlNetModule;
  @override
  final String? controlNetModel;
  @override
  final bool? controlNetSaveDetectedMap;
  @override
  final String? controlNetHrOption;
  @override
  final double? upscaleSize;
  @override
  final String? imageFileName;
  @override
  final String? thumbnailImageFileName;
  @override
  final String? token;
  @override
  final String? thumbnailToken;

  factory _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask(
          [void Function(
                  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder)?
              updates]) =>
      (new GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder()
            ..update(updates))
          ._build();

  _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask._(
      {required this.G__typename,
      required this.id,
      required this.prompt,
      required this.negativePrompt,
      required this.seed,
      required this.steps,
      required this.scale,
      required this.sampler,
      required this.clipSkip,
      required this.sizeType,
      this.t2tImageUrl,
      this.t2tMaskImageUrl,
      this.t2tDenoisingStrengthSize,
      this.t2tInpaintingFillSize,
      this.rating,
      this.completedAt,
      required this.status,
      required this.isDeleted,
      this.isProtected,
      required this.count,
      required this.generationType,
      required this.model,
      this.vae,
      this.nanoid,
      this.estimatedSeconds,
      this.controlNetControlMode,
      this.controlNetEnabled,
      this.controlNetGuidanceEnd,
      this.controlNetGuidanceStart,
      this.controlNetPixelPerfect,
      this.controlNetProcessorRes,
      this.controlNetResizeMode,
      this.controlNetThresholdA,
      this.controlNetThresholdB,
      this.controlNetWeight,
      this.controlNetModule,
      this.controlNetModel,
      this.controlNetSaveDetectedMap,
      this.controlNetHrOption,
      this.upscaleSize,
      this.imageFileName,
      this.thumbnailImageFileName,
      this.token,
      this.thumbnailToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        prompt,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'prompt');
    BuiltValueNullFieldError.checkNotNull(
        negativePrompt,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'negativePrompt');
    BuiltValueNullFieldError.checkNotNull(
        seed,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'seed');
    BuiltValueNullFieldError.checkNotNull(
        steps,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'steps');
    BuiltValueNullFieldError.checkNotNull(
        scale,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'scale');
    BuiltValueNullFieldError.checkNotNull(
        sampler,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'sampler');
    BuiltValueNullFieldError.checkNotNull(
        clipSkip,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'clipSkip');
    BuiltValueNullFieldError.checkNotNull(
        sizeType,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'sizeType');
    BuiltValueNullFieldError.checkNotNull(
        status,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'status');
    BuiltValueNullFieldError.checkNotNull(
        isDeleted,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'isDeleted');
    BuiltValueNullFieldError.checkNotNull(
        count,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'count');
    BuiltValueNullFieldError.checkNotNull(
        generationType,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'generationType');
    BuiltValueNullFieldError.checkNotNull(
        model,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
        'model');
  }

  @override
  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask rebuild(
          void Function(
                  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder
      toBuilder() =>
          new GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask &&
        G__typename == other.G__typename &&
        id == other.id &&
        prompt == other.prompt &&
        negativePrompt == other.negativePrompt &&
        seed == other.seed &&
        steps == other.steps &&
        scale == other.scale &&
        sampler == other.sampler &&
        clipSkip == other.clipSkip &&
        sizeType == other.sizeType &&
        t2tImageUrl == other.t2tImageUrl &&
        t2tMaskImageUrl == other.t2tMaskImageUrl &&
        t2tDenoisingStrengthSize == other.t2tDenoisingStrengthSize &&
        t2tInpaintingFillSize == other.t2tInpaintingFillSize &&
        rating == other.rating &&
        completedAt == other.completedAt &&
        status == other.status &&
        isDeleted == other.isDeleted &&
        isProtected == other.isProtected &&
        count == other.count &&
        generationType == other.generationType &&
        model == other.model &&
        vae == other.vae &&
        nanoid == other.nanoid &&
        estimatedSeconds == other.estimatedSeconds &&
        controlNetControlMode == other.controlNetControlMode &&
        controlNetEnabled == other.controlNetEnabled &&
        controlNetGuidanceEnd == other.controlNetGuidanceEnd &&
        controlNetGuidanceStart == other.controlNetGuidanceStart &&
        controlNetPixelPerfect == other.controlNetPixelPerfect &&
        controlNetProcessorRes == other.controlNetProcessorRes &&
        controlNetResizeMode == other.controlNetResizeMode &&
        controlNetThresholdA == other.controlNetThresholdA &&
        controlNetThresholdB == other.controlNetThresholdB &&
        controlNetWeight == other.controlNetWeight &&
        controlNetModule == other.controlNetModule &&
        controlNetModel == other.controlNetModel &&
        controlNetSaveDetectedMap == other.controlNetSaveDetectedMap &&
        controlNetHrOption == other.controlNetHrOption &&
        upscaleSize == other.upscaleSize &&
        imageFileName == other.imageFileName &&
        thumbnailImageFileName == other.thumbnailImageFileName &&
        token == other.token &&
        thumbnailToken == other.thumbnailToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, prompt.hashCode);
    _$hash = $jc(_$hash, negativePrompt.hashCode);
    _$hash = $jc(_$hash, seed.hashCode);
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jc(_$hash, scale.hashCode);
    _$hash = $jc(_$hash, sampler.hashCode);
    _$hash = $jc(_$hash, clipSkip.hashCode);
    _$hash = $jc(_$hash, sizeType.hashCode);
    _$hash = $jc(_$hash, t2tImageUrl.hashCode);
    _$hash = $jc(_$hash, t2tMaskImageUrl.hashCode);
    _$hash = $jc(_$hash, t2tDenoisingStrengthSize.hashCode);
    _$hash = $jc(_$hash, t2tInpaintingFillSize.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isDeleted.hashCode);
    _$hash = $jc(_$hash, isProtected.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, generationType.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, vae.hashCode);
    _$hash = $jc(_$hash, nanoid.hashCode);
    _$hash = $jc(_$hash, estimatedSeconds.hashCode);
    _$hash = $jc(_$hash, controlNetControlMode.hashCode);
    _$hash = $jc(_$hash, controlNetEnabled.hashCode);
    _$hash = $jc(_$hash, controlNetGuidanceEnd.hashCode);
    _$hash = $jc(_$hash, controlNetGuidanceStart.hashCode);
    _$hash = $jc(_$hash, controlNetPixelPerfect.hashCode);
    _$hash = $jc(_$hash, controlNetProcessorRes.hashCode);
    _$hash = $jc(_$hash, controlNetResizeMode.hashCode);
    _$hash = $jc(_$hash, controlNetThresholdA.hashCode);
    _$hash = $jc(_$hash, controlNetThresholdB.hashCode);
    _$hash = $jc(_$hash, controlNetWeight.hashCode);
    _$hash = $jc(_$hash, controlNetModule.hashCode);
    _$hash = $jc(_$hash, controlNetModel.hashCode);
    _$hash = $jc(_$hash, controlNetSaveDetectedMap.hashCode);
    _$hash = $jc(_$hash, controlNetHrOption.hashCode);
    _$hash = $jc(_$hash, upscaleSize.hashCode);
    _$hash = $jc(_$hash, imageFileName.hashCode);
    _$hash = $jc(_$hash, thumbnailImageFileName.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, thumbnailToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('prompt', prompt)
          ..add('negativePrompt', negativePrompt)
          ..add('seed', seed)
          ..add('steps', steps)
          ..add('scale', scale)
          ..add('sampler', sampler)
          ..add('clipSkip', clipSkip)
          ..add('sizeType', sizeType)
          ..add('t2tImageUrl', t2tImageUrl)
          ..add('t2tMaskImageUrl', t2tMaskImageUrl)
          ..add('t2tDenoisingStrengthSize', t2tDenoisingStrengthSize)
          ..add('t2tInpaintingFillSize', t2tInpaintingFillSize)
          ..add('rating', rating)
          ..add('completedAt', completedAt)
          ..add('status', status)
          ..add('isDeleted', isDeleted)
          ..add('isProtected', isProtected)
          ..add('count', count)
          ..add('generationType', generationType)
          ..add('model', model)
          ..add('vae', vae)
          ..add('nanoid', nanoid)
          ..add('estimatedSeconds', estimatedSeconds)
          ..add('controlNetControlMode', controlNetControlMode)
          ..add('controlNetEnabled', controlNetEnabled)
          ..add('controlNetGuidanceEnd', controlNetGuidanceEnd)
          ..add('controlNetGuidanceStart', controlNetGuidanceStart)
          ..add('controlNetPixelPerfect', controlNetPixelPerfect)
          ..add('controlNetProcessorRes', controlNetProcessorRes)
          ..add('controlNetResizeMode', controlNetResizeMode)
          ..add('controlNetThresholdA', controlNetThresholdA)
          ..add('controlNetThresholdB', controlNetThresholdB)
          ..add('controlNetWeight', controlNetWeight)
          ..add('controlNetModule', controlNetModule)
          ..add('controlNetModel', controlNetModel)
          ..add('controlNetSaveDetectedMap', controlNetSaveDetectedMap)
          ..add('controlNetHrOption', controlNetHrOption)
          ..add('upscaleSize', upscaleSize)
          ..add('imageFileName', imageFileName)
          ..add('thumbnailImageFileName', thumbnailImageFileName)
          ..add('token', token)
          ..add('thumbnailToken', thumbnailToken))
        .toString();
  }
}

class GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder
    implements
        Builder<
            GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask,
            GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder> {
  _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _prompt;
  String? get prompt => _$this._prompt;
  set prompt(String? prompt) => _$this._prompt = prompt;

  String? _negativePrompt;
  String? get negativePrompt => _$this._negativePrompt;
  set negativePrompt(String? negativePrompt) =>
      _$this._negativePrompt = negativePrompt;

  double? _seed;
  double? get seed => _$this._seed;
  set seed(double? seed) => _$this._seed = seed;

  int? _steps;
  int? get steps => _$this._steps;
  set steps(int? steps) => _$this._steps = steps;

  int? _scale;
  int? get scale => _$this._scale;
  set scale(int? scale) => _$this._scale = scale;

  String? _sampler;
  String? get sampler => _$this._sampler;
  set sampler(String? sampler) => _$this._sampler = sampler;

  int? _clipSkip;
  int? get clipSkip => _$this._clipSkip;
  set clipSkip(int? clipSkip) => _$this._clipSkip = clipSkip;

  _i3.GImageGenerationSizeType? _sizeType;
  _i3.GImageGenerationSizeType? get sizeType => _$this._sizeType;
  set sizeType(_i3.GImageGenerationSizeType? sizeType) =>
      _$this._sizeType = sizeType;

  String? _t2tImageUrl;
  String? get t2tImageUrl => _$this._t2tImageUrl;
  set t2tImageUrl(String? t2tImageUrl) => _$this._t2tImageUrl = t2tImageUrl;

  String? _t2tMaskImageUrl;
  String? get t2tMaskImageUrl => _$this._t2tMaskImageUrl;
  set t2tMaskImageUrl(String? t2tMaskImageUrl) =>
      _$this._t2tMaskImageUrl = t2tMaskImageUrl;

  String? _t2tDenoisingStrengthSize;
  String? get t2tDenoisingStrengthSize => _$this._t2tDenoisingStrengthSize;
  set t2tDenoisingStrengthSize(String? t2tDenoisingStrengthSize) =>
      _$this._t2tDenoisingStrengthSize = t2tDenoisingStrengthSize;

  String? _t2tInpaintingFillSize;
  String? get t2tInpaintingFillSize => _$this._t2tInpaintingFillSize;
  set t2tInpaintingFillSize(String? t2tInpaintingFillSize) =>
      _$this._t2tInpaintingFillSize = t2tInpaintingFillSize;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  int? _completedAt;
  int? get completedAt => _$this._completedAt;
  set completedAt(int? completedAt) => _$this._completedAt = completedAt;

  _i3.GImageGenerationStatus? _status;
  _i3.GImageGenerationStatus? get status => _$this._status;
  set status(_i3.GImageGenerationStatus? status) => _$this._status = status;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  bool? _isProtected;
  bool? get isProtected => _$this._isProtected;
  set isProtected(bool? isProtected) => _$this._isProtected = isProtected;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  _i3.GImageGenerationType? _generationType;
  _i3.GImageGenerationType? get generationType => _$this._generationType;
  set generationType(_i3.GImageGenerationType? generationType) =>
      _$this._generationType = generationType;

  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder?
      _model;
  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder
      get model => _$this._model ??=
          new GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder();
  set model(
          GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder?
              model) =>
      _$this._model = model;

  String? _vae;
  String? get vae => _$this._vae;
  set vae(String? vae) => _$this._vae = vae;

  String? _nanoid;
  String? get nanoid => _$this._nanoid;
  set nanoid(String? nanoid) => _$this._nanoid = nanoid;

  int? _estimatedSeconds;
  int? get estimatedSeconds => _$this._estimatedSeconds;
  set estimatedSeconds(int? estimatedSeconds) =>
      _$this._estimatedSeconds = estimatedSeconds;

  String? _controlNetControlMode;
  String? get controlNetControlMode => _$this._controlNetControlMode;
  set controlNetControlMode(String? controlNetControlMode) =>
      _$this._controlNetControlMode = controlNetControlMode;

  bool? _controlNetEnabled;
  bool? get controlNetEnabled => _$this._controlNetEnabled;
  set controlNetEnabled(bool? controlNetEnabled) =>
      _$this._controlNetEnabled = controlNetEnabled;

  double? _controlNetGuidanceEnd;
  double? get controlNetGuidanceEnd => _$this._controlNetGuidanceEnd;
  set controlNetGuidanceEnd(double? controlNetGuidanceEnd) =>
      _$this._controlNetGuidanceEnd = controlNetGuidanceEnd;

  double? _controlNetGuidanceStart;
  double? get controlNetGuidanceStart => _$this._controlNetGuidanceStart;
  set controlNetGuidanceStart(double? controlNetGuidanceStart) =>
      _$this._controlNetGuidanceStart = controlNetGuidanceStart;

  bool? _controlNetPixelPerfect;
  bool? get controlNetPixelPerfect => _$this._controlNetPixelPerfect;
  set controlNetPixelPerfect(bool? controlNetPixelPerfect) =>
      _$this._controlNetPixelPerfect = controlNetPixelPerfect;

  int? _controlNetProcessorRes;
  int? get controlNetProcessorRes => _$this._controlNetProcessorRes;
  set controlNetProcessorRes(int? controlNetProcessorRes) =>
      _$this._controlNetProcessorRes = controlNetProcessorRes;

  String? _controlNetResizeMode;
  String? get controlNetResizeMode => _$this._controlNetResizeMode;
  set controlNetResizeMode(String? controlNetResizeMode) =>
      _$this._controlNetResizeMode = controlNetResizeMode;

  int? _controlNetThresholdA;
  int? get controlNetThresholdA => _$this._controlNetThresholdA;
  set controlNetThresholdA(int? controlNetThresholdA) =>
      _$this._controlNetThresholdA = controlNetThresholdA;

  int? _controlNetThresholdB;
  int? get controlNetThresholdB => _$this._controlNetThresholdB;
  set controlNetThresholdB(int? controlNetThresholdB) =>
      _$this._controlNetThresholdB = controlNetThresholdB;

  double? _controlNetWeight;
  double? get controlNetWeight => _$this._controlNetWeight;
  set controlNetWeight(double? controlNetWeight) =>
      _$this._controlNetWeight = controlNetWeight;

  String? _controlNetModule;
  String? get controlNetModule => _$this._controlNetModule;
  set controlNetModule(String? controlNetModule) =>
      _$this._controlNetModule = controlNetModule;

  String? _controlNetModel;
  String? get controlNetModel => _$this._controlNetModel;
  set controlNetModel(String? controlNetModel) =>
      _$this._controlNetModel = controlNetModel;

  bool? _controlNetSaveDetectedMap;
  bool? get controlNetSaveDetectedMap => _$this._controlNetSaveDetectedMap;
  set controlNetSaveDetectedMap(bool? controlNetSaveDetectedMap) =>
      _$this._controlNetSaveDetectedMap = controlNetSaveDetectedMap;

  String? _controlNetHrOption;
  String? get controlNetHrOption => _$this._controlNetHrOption;
  set controlNetHrOption(String? controlNetHrOption) =>
      _$this._controlNetHrOption = controlNetHrOption;

  double? _upscaleSize;
  double? get upscaleSize => _$this._upscaleSize;
  set upscaleSize(double? upscaleSize) => _$this._upscaleSize = upscaleSize;

  String? _imageFileName;
  String? get imageFileName => _$this._imageFileName;
  set imageFileName(String? imageFileName) =>
      _$this._imageFileName = imageFileName;

  String? _thumbnailImageFileName;
  String? get thumbnailImageFileName => _$this._thumbnailImageFileName;
  set thumbnailImageFileName(String? thumbnailImageFileName) =>
      _$this._thumbnailImageFileName = thumbnailImageFileName;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _thumbnailToken;
  String? get thumbnailToken => _$this._thumbnailToken;
  set thumbnailToken(String? thumbnailToken) =>
      _$this._thumbnailToken = thumbnailToken;

  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder() {
    GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask
        ._initializeBuilder(this);
  }

  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _prompt = $v.prompt;
      _negativePrompt = $v.negativePrompt;
      _seed = $v.seed;
      _steps = $v.steps;
      _scale = $v.scale;
      _sampler = $v.sampler;
      _clipSkip = $v.clipSkip;
      _sizeType = $v.sizeType;
      _t2tImageUrl = $v.t2tImageUrl;
      _t2tMaskImageUrl = $v.t2tMaskImageUrl;
      _t2tDenoisingStrengthSize = $v.t2tDenoisingStrengthSize;
      _t2tInpaintingFillSize = $v.t2tInpaintingFillSize;
      _rating = $v.rating;
      _completedAt = $v.completedAt;
      _status = $v.status;
      _isDeleted = $v.isDeleted;
      _isProtected = $v.isProtected;
      _count = $v.count;
      _generationType = $v.generationType;
      _model = $v.model.toBuilder();
      _vae = $v.vae;
      _nanoid = $v.nanoid;
      _estimatedSeconds = $v.estimatedSeconds;
      _controlNetControlMode = $v.controlNetControlMode;
      _controlNetEnabled = $v.controlNetEnabled;
      _controlNetGuidanceEnd = $v.controlNetGuidanceEnd;
      _controlNetGuidanceStart = $v.controlNetGuidanceStart;
      _controlNetPixelPerfect = $v.controlNetPixelPerfect;
      _controlNetProcessorRes = $v.controlNetProcessorRes;
      _controlNetResizeMode = $v.controlNetResizeMode;
      _controlNetThresholdA = $v.controlNetThresholdA;
      _controlNetThresholdB = $v.controlNetThresholdB;
      _controlNetWeight = $v.controlNetWeight;
      _controlNetModule = $v.controlNetModule;
      _controlNetModel = $v.controlNetModel;
      _controlNetSaveDetectedMap = $v.controlNetSaveDetectedMap;
      _controlNetHrOption = $v.controlNetHrOption;
      _upscaleSize = $v.upscaleSize;
      _imageFileName = $v.imageFileName;
      _thumbnailImageFileName = $v.thumbnailImageFileName;
      _token = $v.token;
      _thumbnailToken = $v.thumbnailToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask;
  }

  @override
  void update(
      void Function(
              GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTaskBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask
      build() => _build();

  _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask
      _build() {
    _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask
        _$result;
    try {
      _$result = _$v ??
          new _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'id'),
              prompt: BuiltValueNullFieldError.checkNotNull(
                  prompt,
                  r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
                  'prompt'),
              negativePrompt: BuiltValueNullFieldError.checkNotNull(
                  negativePrompt,
                  r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
                  'negativePrompt'),
              seed: BuiltValueNullFieldError.checkNotNull(
                  seed, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'seed'),
              steps: BuiltValueNullFieldError.checkNotNull(steps, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'steps'),
              scale: BuiltValueNullFieldError.checkNotNull(scale, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'scale'),
              sampler: BuiltValueNullFieldError.checkNotNull(sampler, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'sampler'),
              clipSkip: BuiltValueNullFieldError.checkNotNull(clipSkip, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'clipSkip'),
              sizeType: BuiltValueNullFieldError.checkNotNull(sizeType, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'sizeType'),
              t2tImageUrl: t2tImageUrl,
              t2tMaskImageUrl: t2tMaskImageUrl,
              t2tDenoisingStrengthSize: t2tDenoisingStrengthSize,
              t2tInpaintingFillSize: t2tInpaintingFillSize,
              rating: rating,
              completedAt: completedAt,
              status: BuiltValueNullFieldError.checkNotNull(status, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'status'),
              isDeleted: BuiltValueNullFieldError.checkNotNull(isDeleted, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'isDeleted'),
              isProtected: isProtected,
              count: BuiltValueNullFieldError.checkNotNull(count, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'count'),
              generationType: BuiltValueNullFieldError.checkNotNull(generationType, r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask', 'generationType'),
              model: model.build(),
              vae: vae,
              nanoid: nanoid,
              estimatedSeconds: estimatedSeconds,
              controlNetControlMode: controlNetControlMode,
              controlNetEnabled: controlNetEnabled,
              controlNetGuidanceEnd: controlNetGuidanceEnd,
              controlNetGuidanceStart: controlNetGuidanceStart,
              controlNetPixelPerfect: controlNetPixelPerfect,
              controlNetProcessorRes: controlNetProcessorRes,
              controlNetResizeMode: controlNetResizeMode,
              controlNetThresholdA: controlNetThresholdA,
              controlNetThresholdB: controlNetThresholdB,
              controlNetWeight: controlNetWeight,
              controlNetModule: controlNetModule,
              controlNetModel: controlNetModel,
              controlNetSaveDetectedMap: controlNetSaveDetectedMap,
              controlNetHrOption: controlNetHrOption,
              upscaleSize: upscaleSize,
              imageFileName: imageFileName,
              thumbnailImageFileName: thumbnailImageFileName,
              token: token,
              thumbnailToken: thumbnailToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'model';
        model.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model
    extends GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String type;

  factory _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model(
          [void Function(
                  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder)?
              updates]) =>
      (new GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder()
            ..update(updates))
          ._build();

  _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model',
        'type');
  }

  @override
  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model
      rebuild(
              void Function(
                      GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder
      toBuilder() =>
          new GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder
    implements
        Builder<
            GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model,
            GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder> {
  _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder() {
    GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model
        ._initializeBuilder(this);
  }

  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model;
  }

  @override
  void update(
      void Function(
              GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_modelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model
      build() => _build();

  _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model
      _build() {
    final _$result = _$v ??
        new _$GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model',
                'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'GUpdateRatingImageGenerationTaskData_updateRatingImageGenerationTask_model',
                'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
