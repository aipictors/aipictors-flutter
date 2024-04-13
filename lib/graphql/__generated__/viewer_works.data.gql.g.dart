// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewer_works.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerWorksData> _$gViewerWorksDataSerializer =
    new _$GViewerWorksDataSerializer();
Serializer<GViewerWorksData_viewer> _$gViewerWorksDataViewerSerializer =
    new _$GViewerWorksData_viewerSerializer();
Serializer<GViewerWorksData_viewer_works>
    _$gViewerWorksDataViewerWorksSerializer =
    new _$GViewerWorksData_viewer_worksSerializer();
Serializer<GViewerWorksData_viewer_works_thumbnailImage>
    _$gViewerWorksDataViewerWorksThumbnailImageSerializer =
    new _$GViewerWorksData_viewer_works_thumbnailImageSerializer();

class _$GViewerWorksDataSerializer
    implements StructuredSerializer<GViewerWorksData> {
  @override
  final Iterable<Type> types = const [GViewerWorksData, _$GViewerWorksData];
  @override
  final String wireName = 'GViewerWorksData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GViewerWorksData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.viewer;
    if (value != null) {
      result
        ..add('viewer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GViewerWorksData_viewer)));
    }
    return result;
  }

  @override
  GViewerWorksData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerWorksDataBuilder();

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
        case 'viewer':
          result.viewer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GViewerWorksData_viewer))!
              as GViewerWorksData_viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerWorksData_viewerSerializer
    implements StructuredSerializer<GViewerWorksData_viewer> {
  @override
  final Iterable<Type> types = const [
    GViewerWorksData_viewer,
    _$GViewerWorksData_viewer
  ];
  @override
  final String wireName = 'GViewerWorksData_viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerWorksData_viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'works',
      serializers.serialize(object.works,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GViewerWorksData_viewer_works)])),
    ];

    return result;
  }

  @override
  GViewerWorksData_viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerWorksData_viewerBuilder();

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
        case 'works':
          result.works.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GViewerWorksData_viewer_works)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerWorksData_viewer_worksSerializer
    implements StructuredSerializer<GViewerWorksData_viewer_works> {
  @override
  final Iterable<Type> types = const [
    GViewerWorksData_viewer_works,
    _$GViewerWorksData_viewer_works
  ];
  @override
  final String wireName = 'GViewerWorksData_viewer_works';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerWorksData_viewer_works object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'likesCount',
      serializers.serialize(object.likesCount,
          specifiedType: const FullType(int)),
      'commentsCount',
      serializers.serialize(object.commentsCount,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'imageAspectRatio',
      serializers.serialize(object.imageAspectRatio,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.thumbnailImage;
    if (value != null) {
      result
        ..add('thumbnailImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GViewerWorksData_viewer_works_thumbnailImage)));
    }
    value = object.thumbnailImagePosition;
    if (value != null) {
      result
        ..add('thumbnailImagePosition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GViewerWorksData_viewer_works deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerWorksData_viewer_worksBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likesCount':
          result.likesCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'commentsCount':
          result.commentsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'thumbnailImage':
          result.thumbnailImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerWorksData_viewer_works_thumbnailImage))!
              as GViewerWorksData_viewer_works_thumbnailImage);
          break;
        case 'thumbnailImagePosition':
          result.thumbnailImagePosition = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'imageAspectRatio':
          result.imageAspectRatio = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerWorksData_viewer_works_thumbnailImageSerializer
    implements
        StructuredSerializer<GViewerWorksData_viewer_works_thumbnailImage> {
  @override
  final Iterable<Type> types = const [
    GViewerWorksData_viewer_works_thumbnailImage,
    _$GViewerWorksData_viewer_works_thumbnailImage
  ];
  @override
  final String wireName = 'GViewerWorksData_viewer_works_thumbnailImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GViewerWorksData_viewer_works_thumbnailImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'downloadURL',
      serializers.serialize(object.downloadURL,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GViewerWorksData_viewer_works_thumbnailImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerWorksData_viewer_works_thumbnailImageBuilder();

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
        case 'downloadURL':
          result.downloadURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerWorksData extends GViewerWorksData {
  @override
  final String G__typename;
  @override
  final GViewerWorksData_viewer? viewer;

  factory _$GViewerWorksData(
          [void Function(GViewerWorksDataBuilder)? updates]) =>
      (new GViewerWorksDataBuilder()..update(updates))._build();

  _$GViewerWorksData._({required this.G__typename, this.viewer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerWorksData', 'G__typename');
  }

  @override
  GViewerWorksData rebuild(void Function(GViewerWorksDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerWorksDataBuilder toBuilder() =>
      new GViewerWorksDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerWorksData &&
        G__typename == other.G__typename &&
        viewer == other.viewer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, viewer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerWorksData')
          ..add('G__typename', G__typename)
          ..add('viewer', viewer))
        .toString();
  }
}

class GViewerWorksDataBuilder
    implements Builder<GViewerWorksData, GViewerWorksDataBuilder> {
  _$GViewerWorksData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GViewerWorksData_viewerBuilder? _viewer;
  GViewerWorksData_viewerBuilder get viewer =>
      _$this._viewer ??= new GViewerWorksData_viewerBuilder();
  set viewer(GViewerWorksData_viewerBuilder? viewer) => _$this._viewer = viewer;

  GViewerWorksDataBuilder() {
    GViewerWorksData._initializeBuilder(this);
  }

  GViewerWorksDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _viewer = $v.viewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerWorksData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerWorksData;
  }

  @override
  void update(void Function(GViewerWorksDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerWorksData build() => _build();

  _$GViewerWorksData _build() {
    _$GViewerWorksData _$result;
    try {
      _$result = _$v ??
          new _$GViewerWorksData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GViewerWorksData', 'G__typename'),
              viewer: _viewer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'viewer';
        _viewer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerWorksData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerWorksData_viewer extends GViewerWorksData_viewer {
  @override
  final String G__typename;
  @override
  final BuiltList<GViewerWorksData_viewer_works> works;

  factory _$GViewerWorksData_viewer(
          [void Function(GViewerWorksData_viewerBuilder)? updates]) =>
      (new GViewerWorksData_viewerBuilder()..update(updates))._build();

  _$GViewerWorksData_viewer._({required this.G__typename, required this.works})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerWorksData_viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        works, r'GViewerWorksData_viewer', 'works');
  }

  @override
  GViewerWorksData_viewer rebuild(
          void Function(GViewerWorksData_viewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerWorksData_viewerBuilder toBuilder() =>
      new GViewerWorksData_viewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerWorksData_viewer &&
        G__typename == other.G__typename &&
        works == other.works;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, works.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerWorksData_viewer')
          ..add('G__typename', G__typename)
          ..add('works', works))
        .toString();
  }
}

class GViewerWorksData_viewerBuilder
    implements
        Builder<GViewerWorksData_viewer, GViewerWorksData_viewerBuilder> {
  _$GViewerWorksData_viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GViewerWorksData_viewer_works>? _works;
  ListBuilder<GViewerWorksData_viewer_works> get works =>
      _$this._works ??= new ListBuilder<GViewerWorksData_viewer_works>();
  set works(ListBuilder<GViewerWorksData_viewer_works>? works) =>
      _$this._works = works;

  GViewerWorksData_viewerBuilder() {
    GViewerWorksData_viewer._initializeBuilder(this);
  }

  GViewerWorksData_viewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _works = $v.works.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerWorksData_viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerWorksData_viewer;
  }

  @override
  void update(void Function(GViewerWorksData_viewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerWorksData_viewer build() => _build();

  _$GViewerWorksData_viewer _build() {
    _$GViewerWorksData_viewer _$result;
    try {
      _$result = _$v ??
          new _$GViewerWorksData_viewer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GViewerWorksData_viewer', 'G__typename'),
              works: works.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'works';
        works.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerWorksData_viewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerWorksData_viewer_works extends GViewerWorksData_viewer_works {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final int likesCount;
  @override
  final int commentsCount;
  @override
  final int createdAt;
  @override
  final GViewerWorksData_viewer_works_thumbnailImage? thumbnailImage;
  @override
  final double? thumbnailImagePosition;
  @override
  final double imageAspectRatio;

  factory _$GViewerWorksData_viewer_works(
          [void Function(GViewerWorksData_viewer_worksBuilder)? updates]) =>
      (new GViewerWorksData_viewer_worksBuilder()..update(updates))._build();

  _$GViewerWorksData_viewer_works._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.likesCount,
      required this.commentsCount,
      required this.createdAt,
      this.thumbnailImage,
      this.thumbnailImagePosition,
      required this.imageAspectRatio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerWorksData_viewer_works', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GViewerWorksData_viewer_works', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GViewerWorksData_viewer_works', 'title');
    BuiltValueNullFieldError.checkNotNull(
        likesCount, r'GViewerWorksData_viewer_works', 'likesCount');
    BuiltValueNullFieldError.checkNotNull(
        commentsCount, r'GViewerWorksData_viewer_works', 'commentsCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GViewerWorksData_viewer_works', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        imageAspectRatio, r'GViewerWorksData_viewer_works', 'imageAspectRatio');
  }

  @override
  GViewerWorksData_viewer_works rebuild(
          void Function(GViewerWorksData_viewer_worksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerWorksData_viewer_worksBuilder toBuilder() =>
      new GViewerWorksData_viewer_worksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerWorksData_viewer_works &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        likesCount == other.likesCount &&
        commentsCount == other.commentsCount &&
        createdAt == other.createdAt &&
        thumbnailImage == other.thumbnailImage &&
        thumbnailImagePosition == other.thumbnailImagePosition &&
        imageAspectRatio == other.imageAspectRatio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, commentsCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, thumbnailImage.hashCode);
    _$hash = $jc(_$hash, thumbnailImagePosition.hashCode);
    _$hash = $jc(_$hash, imageAspectRatio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerWorksData_viewer_works')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('likesCount', likesCount)
          ..add('commentsCount', commentsCount)
          ..add('createdAt', createdAt)
          ..add('thumbnailImage', thumbnailImage)
          ..add('thumbnailImagePosition', thumbnailImagePosition)
          ..add('imageAspectRatio', imageAspectRatio))
        .toString();
  }
}

class GViewerWorksData_viewer_worksBuilder
    implements
        Builder<GViewerWorksData_viewer_works,
            GViewerWorksData_viewer_worksBuilder> {
  _$GViewerWorksData_viewer_works? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  int? _commentsCount;
  int? get commentsCount => _$this._commentsCount;
  set commentsCount(int? commentsCount) =>
      _$this._commentsCount = commentsCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GViewerWorksData_viewer_works_thumbnailImageBuilder? _thumbnailImage;
  GViewerWorksData_viewer_works_thumbnailImageBuilder get thumbnailImage =>
      _$this._thumbnailImage ??=
          new GViewerWorksData_viewer_works_thumbnailImageBuilder();
  set thumbnailImage(
          GViewerWorksData_viewer_works_thumbnailImageBuilder?
              thumbnailImage) =>
      _$this._thumbnailImage = thumbnailImage;

  double? _thumbnailImagePosition;
  double? get thumbnailImagePosition => _$this._thumbnailImagePosition;
  set thumbnailImagePosition(double? thumbnailImagePosition) =>
      _$this._thumbnailImagePosition = thumbnailImagePosition;

  double? _imageAspectRatio;
  double? get imageAspectRatio => _$this._imageAspectRatio;
  set imageAspectRatio(double? imageAspectRatio) =>
      _$this._imageAspectRatio = imageAspectRatio;

  GViewerWorksData_viewer_worksBuilder() {
    GViewerWorksData_viewer_works._initializeBuilder(this);
  }

  GViewerWorksData_viewer_worksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _likesCount = $v.likesCount;
      _commentsCount = $v.commentsCount;
      _createdAt = $v.createdAt;
      _thumbnailImage = $v.thumbnailImage?.toBuilder();
      _thumbnailImagePosition = $v.thumbnailImagePosition;
      _imageAspectRatio = $v.imageAspectRatio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerWorksData_viewer_works other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerWorksData_viewer_works;
  }

  @override
  void update(void Function(GViewerWorksData_viewer_worksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerWorksData_viewer_works build() => _build();

  _$GViewerWorksData_viewer_works _build() {
    _$GViewerWorksData_viewer_works _$result;
    try {
      _$result = _$v ??
          new _$GViewerWorksData_viewer_works._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GViewerWorksData_viewer_works', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GViewerWorksData_viewer_works', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GViewerWorksData_viewer_works', 'title'),
              likesCount: BuiltValueNullFieldError.checkNotNull(
                  likesCount, r'GViewerWorksData_viewer_works', 'likesCount'),
              commentsCount: BuiltValueNullFieldError.checkNotNull(
                  commentsCount, r'GViewerWorksData_viewer_works', 'commentsCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GViewerWorksData_viewer_works', 'createdAt'),
              thumbnailImage: _thumbnailImage?.build(),
              thumbnailImagePosition: thumbnailImagePosition,
              imageAspectRatio: BuiltValueNullFieldError.checkNotNull(
                  imageAspectRatio,
                  r'GViewerWorksData_viewer_works',
                  'imageAspectRatio'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'thumbnailImage';
        _thumbnailImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerWorksData_viewer_works', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerWorksData_viewer_works_thumbnailImage
    extends GViewerWorksData_viewer_works_thumbnailImage {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String downloadURL;

  factory _$GViewerWorksData_viewer_works_thumbnailImage(
          [void Function(GViewerWorksData_viewer_works_thumbnailImageBuilder)?
              updates]) =>
      (new GViewerWorksData_viewer_works_thumbnailImageBuilder()
            ..update(updates))
          ._build();

  _$GViewerWorksData_viewer_works_thumbnailImage._(
      {required this.G__typename, required this.id, required this.downloadURL})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GViewerWorksData_viewer_works_thumbnailImage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GViewerWorksData_viewer_works_thumbnailImage', 'id');
    BuiltValueNullFieldError.checkNotNull(downloadURL,
        r'GViewerWorksData_viewer_works_thumbnailImage', 'downloadURL');
  }

  @override
  GViewerWorksData_viewer_works_thumbnailImage rebuild(
          void Function(GViewerWorksData_viewer_works_thumbnailImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerWorksData_viewer_works_thumbnailImageBuilder toBuilder() =>
      new GViewerWorksData_viewer_works_thumbnailImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerWorksData_viewer_works_thumbnailImage &&
        G__typename == other.G__typename &&
        id == other.id &&
        downloadURL == other.downloadURL;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, downloadURL.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerWorksData_viewer_works_thumbnailImage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('downloadURL', downloadURL))
        .toString();
  }
}

class GViewerWorksData_viewer_works_thumbnailImageBuilder
    implements
        Builder<GViewerWorksData_viewer_works_thumbnailImage,
            GViewerWorksData_viewer_works_thumbnailImageBuilder> {
  _$GViewerWorksData_viewer_works_thumbnailImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _downloadURL;
  String? get downloadURL => _$this._downloadURL;
  set downloadURL(String? downloadURL) => _$this._downloadURL = downloadURL;

  GViewerWorksData_viewer_works_thumbnailImageBuilder() {
    GViewerWorksData_viewer_works_thumbnailImage._initializeBuilder(this);
  }

  GViewerWorksData_viewer_works_thumbnailImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _downloadURL = $v.downloadURL;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerWorksData_viewer_works_thumbnailImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerWorksData_viewer_works_thumbnailImage;
  }

  @override
  void update(
      void Function(GViewerWorksData_viewer_works_thumbnailImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerWorksData_viewer_works_thumbnailImage build() => _build();

  _$GViewerWorksData_viewer_works_thumbnailImage _build() {
    final _$result = _$v ??
        new _$GViewerWorksData_viewer_works_thumbnailImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GViewerWorksData_viewer_works_thumbnailImage', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GViewerWorksData_viewer_works_thumbnailImage', 'id'),
            downloadURL: BuiltValueNullFieldError.checkNotNull(
                downloadURL,
                r'GViewerWorksData_viewer_works_thumbnailImage',
                'downloadURL'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
