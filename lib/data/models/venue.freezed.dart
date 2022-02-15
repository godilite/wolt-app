// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'venue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Venue _$VenueFromJson(Map<String, dynamic> json) {
  return _Venue.fromJson(json);
}

/// @nodoc
class _$VenueTearOff {
  const _$VenueTearOff();

  _Venue call(
      {required String id,
      Rating? rating,
      String? name,
      @JsonKey(name: 'short_description') String? shortDescription}) {
    return _Venue(
      id: id,
      rating: rating,
      name: name,
      shortDescription: shortDescription,
    );
  }

  Venue fromJson(Map<String, Object?> json) {
    return Venue.fromJson(json);
  }
}

/// @nodoc
const $Venue = _$VenueTearOff();

/// @nodoc
mixin _$Venue {
  String get id => throw _privateConstructorUsedError;
  Rating? get rating => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String? get shortDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VenueCopyWith<Venue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueCopyWith<$Res> {
  factory $VenueCopyWith(Venue value, $Res Function(Venue) then) =
      _$VenueCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Rating? rating,
      String? name,
      @JsonKey(name: 'short_description') String? shortDescription});

  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class _$VenueCopyWithImpl<$Res> implements $VenueCopyWith<$Res> {
  _$VenueCopyWithImpl(this._value, this._then);

  final Venue _value;
  // ignore: unused_field
  final $Res Function(Venue) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value));
    });
  }
}

/// @nodoc
abstract class _$VenueCopyWith<$Res> implements $VenueCopyWith<$Res> {
  factory _$VenueCopyWith(_Venue value, $Res Function(_Venue) then) =
      __$VenueCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Rating? rating,
      String? name,
      @JsonKey(name: 'short_description') String? shortDescription});

  @override
  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class __$VenueCopyWithImpl<$Res> extends _$VenueCopyWithImpl<$Res>
    implements _$VenueCopyWith<$Res> {
  __$VenueCopyWithImpl(_Venue _value, $Res Function(_Venue) _then)
      : super(_value, (v) => _then(v as _Venue));

  @override
  _Venue get _value => super._value as _Venue;

  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
  }) {
    return _then(_Venue(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Venue implements _Venue {
  _$_Venue(
      {required this.id,
      this.rating,
      this.name,
      @JsonKey(name: 'short_description') this.shortDescription});

  factory _$_Venue.fromJson(Map<String, dynamic> json) =>
      _$$_VenueFromJson(json);

  @override
  final String id;
  @override
  final Rating? rating;
  @override
  final String? name;
  @override
  @JsonKey(name: 'short_description')
  final String? shortDescription;

  @override
  String toString() {
    return 'Venue(id: $id, rating: $rating, name: $name, shortDescription: $shortDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Venue &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.shortDescription, shortDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(shortDescription));

  @JsonKey(ignore: true)
  @override
  _$VenueCopyWith<_Venue> get copyWith =>
      __$VenueCopyWithImpl<_Venue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VenueToJson(this);
  }
}

abstract class _Venue implements Venue {
  factory _Venue(
      {required String id,
      Rating? rating,
      String? name,
      @JsonKey(name: 'short_description') String? shortDescription}) = _$_Venue;

  factory _Venue.fromJson(Map<String, dynamic> json) = _$_Venue.fromJson;

  @override
  String get id;
  @override
  Rating? get rating;
  @override
  String? get name;
  @override
  @JsonKey(name: 'short_description')
  String? get shortDescription;
  @override
  @JsonKey(ignore: true)
  _$VenueCopyWith<_Venue> get copyWith => throw _privateConstructorUsedError;
}
