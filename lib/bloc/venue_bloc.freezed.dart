// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'venue_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VenueStateTearOff {
  const _$VenueStateTearOff();

  VenueStateLoading loading() {
    return const VenueStateLoading();
  }

  VenueStateLoaded loaded(List<Item> items) {
    return VenueStateLoaded(
      items,
    );
  }
}

/// @nodoc
const $VenueState = _$VenueStateTearOff();

/// @nodoc
mixin _$VenueState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Item> items) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> items)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> items)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VenueStateLoading value) loading,
    required TResult Function(VenueStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VenueStateLoading value)? loading,
    TResult Function(VenueStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VenueStateLoading value)? loading,
    TResult Function(VenueStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueStateCopyWith<$Res> {
  factory $VenueStateCopyWith(
          VenueState value, $Res Function(VenueState) then) =
      _$VenueStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VenueStateCopyWithImpl<$Res> implements $VenueStateCopyWith<$Res> {
  _$VenueStateCopyWithImpl(this._value, this._then);

  final VenueState _value;
  // ignore: unused_field
  final $Res Function(VenueState) _then;
}

/// @nodoc
abstract class $VenueStateLoadingCopyWith<$Res> {
  factory $VenueStateLoadingCopyWith(
          VenueStateLoading value, $Res Function(VenueStateLoading) then) =
      _$VenueStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$VenueStateLoadingCopyWithImpl<$Res>
    extends _$VenueStateCopyWithImpl<$Res>
    implements $VenueStateLoadingCopyWith<$Res> {
  _$VenueStateLoadingCopyWithImpl(
      VenueStateLoading _value, $Res Function(VenueStateLoading) _then)
      : super(_value, (v) => _then(v as VenueStateLoading));

  @override
  VenueStateLoading get _value => super._value as VenueStateLoading;
}

/// @nodoc

class _$VenueStateLoading implements VenueStateLoading {
  const _$VenueStateLoading();

  @override
  String toString() {
    return 'VenueState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is VenueStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Item> items) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> items)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> items)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VenueStateLoading value) loading,
    required TResult Function(VenueStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VenueStateLoading value)? loading,
    TResult Function(VenueStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VenueStateLoading value)? loading,
    TResult Function(VenueStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VenueStateLoading implements VenueState {
  const factory VenueStateLoading() = _$VenueStateLoading;
}

/// @nodoc
abstract class $VenueStateLoadedCopyWith<$Res> {
  factory $VenueStateLoadedCopyWith(
          VenueStateLoaded value, $Res Function(VenueStateLoaded) then) =
      _$VenueStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Item> items});
}

/// @nodoc
class _$VenueStateLoadedCopyWithImpl<$Res>
    extends _$VenueStateCopyWithImpl<$Res>
    implements $VenueStateLoadedCopyWith<$Res> {
  _$VenueStateLoadedCopyWithImpl(
      VenueStateLoaded _value, $Res Function(VenueStateLoaded) _then)
      : super(_value, (v) => _then(v as VenueStateLoaded));

  @override
  VenueStateLoaded get _value => super._value as VenueStateLoaded;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(VenueStateLoaded(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$VenueStateLoaded implements VenueStateLoaded {
  const _$VenueStateLoaded(this.items);

  @override
  final List<Item> items;

  @override
  String toString() {
    return 'VenueState.loaded(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VenueStateLoaded &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  $VenueStateLoadedCopyWith<VenueStateLoaded> get copyWith =>
      _$VenueStateLoadedCopyWithImpl<VenueStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Item> items) loaded,
  }) {
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> items)? loaded,
  }) {
    return loaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> items)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VenueStateLoading value) loading,
    required TResult Function(VenueStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VenueStateLoading value)? loading,
    TResult Function(VenueStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VenueStateLoading value)? loading,
    TResult Function(VenueStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class VenueStateLoaded implements VenueState {
  const factory VenueStateLoaded(List<Item> items) = _$VenueStateLoaded;

  List<Item> get items;
  @JsonKey(ignore: true)
  $VenueStateLoadedCopyWith<VenueStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VenueEventTearOff {
  const _$VenueEventTearOff();

  VenueEventLoad load() {
    return const VenueEventLoad();
  }
}

/// @nodoc
const $VenueEvent = _$VenueEventTearOff();

/// @nodoc
mixin _$VenueEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VenueEventLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VenueEventLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VenueEventLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueEventCopyWith<$Res> {
  factory $VenueEventCopyWith(
          VenueEvent value, $Res Function(VenueEvent) then) =
      _$VenueEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VenueEventCopyWithImpl<$Res> implements $VenueEventCopyWith<$Res> {
  _$VenueEventCopyWithImpl(this._value, this._then);

  final VenueEvent _value;
  // ignore: unused_field
  final $Res Function(VenueEvent) _then;
}

/// @nodoc
abstract class $VenueEventLoadCopyWith<$Res> {
  factory $VenueEventLoadCopyWith(
          VenueEventLoad value, $Res Function(VenueEventLoad) then) =
      _$VenueEventLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$VenueEventLoadCopyWithImpl<$Res> extends _$VenueEventCopyWithImpl<$Res>
    implements $VenueEventLoadCopyWith<$Res> {
  _$VenueEventLoadCopyWithImpl(
      VenueEventLoad _value, $Res Function(VenueEventLoad) _then)
      : super(_value, (v) => _then(v as VenueEventLoad));

  @override
  VenueEventLoad get _value => super._value as VenueEventLoad;
}

/// @nodoc

class _$VenueEventLoad implements VenueEventLoad {
  const _$VenueEventLoad();

  @override
  String toString() {
    return 'VenueEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is VenueEventLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VenueEventLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VenueEventLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VenueEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class VenueEventLoad implements VenueEvent {
  const factory VenueEventLoad() = _$VenueEventLoad;
}
