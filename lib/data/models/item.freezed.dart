// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {String? title,
      ItemImage? image,
      Venue? venue,
      @JsonKey(name: 'track_id') String? trackId}) {
    return _Item(
      title: title,
      image: image,
      venue: venue,
      trackId: trackId,
    );
  }

  Item fromJson(Map<String, Object?> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  String? get title => throw _privateConstructorUsedError;
  ItemImage? get image => throw _privateConstructorUsedError;
  Venue? get venue => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_id')
  String? get trackId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      ItemImage? image,
      Venue? venue,
      @JsonKey(name: 'track_id') String? trackId});

  $ItemImageCopyWith<$Res>? get image;
  $VenueCopyWith<$Res>? get venue;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? venue = freezed,
    Object? trackId = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ItemImage?,
      venue: venue == freezed
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue?,
      trackId: trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ItemImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ItemImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }

  @override
  $VenueCopyWith<$Res>? get venue {
    if (_value.venue == null) {
      return null;
    }

    return $VenueCopyWith<$Res>(_value.venue!, (value) {
      return _then(_value.copyWith(venue: value));
    });
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      ItemImage? image,
      Venue? venue,
      @JsonKey(name: 'track_id') String? trackId});

  @override
  $ItemImageCopyWith<$Res>? get image;
  @override
  $VenueCopyWith<$Res>? get venue;
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? venue = freezed,
    Object? trackId = freezed,
  }) {
    return _then(_Item(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ItemImage?,
      venue: venue == freezed
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue?,
      trackId: trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  _$_Item(
      {this.title,
      this.image,
      this.venue,
      @JsonKey(name: 'track_id') this.trackId});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String? title;
  @override
  final ItemImage? image;
  @override
  final Venue? venue;
  @override
  @JsonKey(name: 'track_id')
  final String? trackId;

  @override
  String toString() {
    return 'Item(title: $title, image: $image, venue: $venue, trackId: $trackId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Item &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.venue, venue) &&
            const DeepCollectionEquality().equals(other.trackId, trackId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(venue),
      const DeepCollectionEquality().hash(trackId));

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  factory _Item(
      {String? title,
      ItemImage? image,
      Venue? venue,
      @JsonKey(name: 'track_id') String? trackId}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String? get title;
  @override
  ItemImage? get image;
  @override
  Venue? get venue;
  @override
  @JsonKey(name: 'track_id')
  String? get trackId;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}
