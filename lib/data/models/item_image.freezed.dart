// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemImage _$ItemImageFromJson(Map<String, dynamic> json) {
  return _ItemImage.fromJson(json);
}

/// @nodoc
class _$ItemImageTearOff {
  const _$ItemImageTearOff();

  _ItemImage call({required String url}) {
    return _ItemImage(
      url: url,
    );
  }

  ItemImage fromJson(Map<String, Object?> json) {
    return ItemImage.fromJson(json);
  }
}

/// @nodoc
const $ItemImage = _$ItemImageTearOff();

/// @nodoc
mixin _$ItemImage {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemImageCopyWith<ItemImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemImageCopyWith<$Res> {
  factory $ItemImageCopyWith(ItemImage value, $Res Function(ItemImage) then) =
      _$ItemImageCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$ItemImageCopyWithImpl<$Res> implements $ItemImageCopyWith<$Res> {
  _$ItemImageCopyWithImpl(this._value, this._then);

  final ItemImage _value;
  // ignore: unused_field
  final $Res Function(ItemImage) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemImageCopyWith<$Res> implements $ItemImageCopyWith<$Res> {
  factory _$ItemImageCopyWith(
          _ItemImage value, $Res Function(_ItemImage) then) =
      __$ItemImageCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$ItemImageCopyWithImpl<$Res> extends _$ItemImageCopyWithImpl<$Res>
    implements _$ItemImageCopyWith<$Res> {
  __$ItemImageCopyWithImpl(_ItemImage _value, $Res Function(_ItemImage) _then)
      : super(_value, (v) => _then(v as _ItemImage));

  @override
  _ItemImage get _value => super._value as _ItemImage;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_ItemImage(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemImage implements _ItemImage {
  _$_ItemImage({required this.url});

  factory _$_ItemImage.fromJson(Map<String, dynamic> json) =>
      _$$_ItemImageFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'ItemImage(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemImage &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$ItemImageCopyWith<_ItemImage> get copyWith =>
      __$ItemImageCopyWithImpl<_ItemImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemImageToJson(this);
  }
}

abstract class _ItemImage implements ItemImage {
  factory _ItemImage({required String url}) = _$_ItemImage;

  factory _ItemImage.fromJson(Map<String, dynamic> json) =
      _$_ItemImage.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$ItemImageCopyWith<_ItemImage> get copyWith =>
      throw _privateConstructorUsedError;
}
