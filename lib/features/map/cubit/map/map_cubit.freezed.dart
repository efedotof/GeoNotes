// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MapState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MapState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MapState()';
  }
}

/// @nodoc
class $MapStateCopyWith<$Res> {
  $MapStateCopyWith(MapState _, $Res Function(MapState) __);
}

/// Adds pattern-matching-related methods to [MapState].
extension MapStatePatterns on MapState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MapLoading value)? mapLoading,
    TResult Function(_MapPermissionDenied value)? mapPermissionDenied,
    TResult Function(_MapLocationUpdated value)? mapLocationUpdated,
    TResult Function(_MapMarkerAdded value)? mapMarkerAdded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _MapLoading() when mapLoading != null:
        return mapLoading(_that);
      case _MapPermissionDenied() when mapPermissionDenied != null:
        return mapPermissionDenied(_that);
      case _MapLocationUpdated() when mapLocationUpdated != null:
        return mapLocationUpdated(_that);
      case _MapMarkerAdded() when mapMarkerAdded != null:
        return mapMarkerAdded(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MapLoading value) mapLoading,
    required TResult Function(_MapPermissionDenied value) mapPermissionDenied,
    required TResult Function(_MapLocationUpdated value) mapLocationUpdated,
    required TResult Function(_MapMarkerAdded value) mapMarkerAdded,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _MapLoading():
        return mapLoading(_that);
      case _MapPermissionDenied():
        return mapPermissionDenied(_that);
      case _MapLocationUpdated():
        return mapLocationUpdated(_that);
      case _MapMarkerAdded():
        return mapMarkerAdded(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MapLoading value)? mapLoading,
    TResult? Function(_MapPermissionDenied value)? mapPermissionDenied,
    TResult? Function(_MapLocationUpdated value)? mapLocationUpdated,
    TResult? Function(_MapMarkerAdded value)? mapMarkerAdded,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _MapLoading() when mapLoading != null:
        return mapLoading(_that);
      case _MapPermissionDenied() when mapPermissionDenied != null:
        return mapPermissionDenied(_that);
      case _MapLocationUpdated() when mapLocationUpdated != null:
        return mapLocationUpdated(_that);
      case _MapMarkerAdded() when mapMarkerAdded != null:
        return mapMarkerAdded(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mapLoading,
    TResult Function()? mapPermissionDenied,
    TResult Function(LatLng location, String cityName)? mapLocationUpdated,
    TResult Function(LatLng markerLocation, String cityName)? mapMarkerAdded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _MapLoading() when mapLoading != null:
        return mapLoading();
      case _MapPermissionDenied() when mapPermissionDenied != null:
        return mapPermissionDenied();
      case _MapLocationUpdated() when mapLocationUpdated != null:
        return mapLocationUpdated(_that.location, _that.cityName);
      case _MapMarkerAdded() when mapMarkerAdded != null:
        return mapMarkerAdded(_that.markerLocation, _that.cityName);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mapLoading,
    required TResult Function() mapPermissionDenied,
    required TResult Function(LatLng location, String cityName)
        mapLocationUpdated,
    required TResult Function(LatLng markerLocation, String cityName)
        mapMarkerAdded,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _MapLoading():
        return mapLoading();
      case _MapPermissionDenied():
        return mapPermissionDenied();
      case _MapLocationUpdated():
        return mapLocationUpdated(_that.location, _that.cityName);
      case _MapMarkerAdded():
        return mapMarkerAdded(_that.markerLocation, _that.cityName);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mapLoading,
    TResult? Function()? mapPermissionDenied,
    TResult? Function(LatLng location, String cityName)? mapLocationUpdated,
    TResult? Function(LatLng markerLocation, String cityName)? mapMarkerAdded,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _MapLoading() when mapLoading != null:
        return mapLoading();
      case _MapPermissionDenied() when mapPermissionDenied != null:
        return mapPermissionDenied();
      case _MapLocationUpdated() when mapLocationUpdated != null:
        return mapLocationUpdated(_that.location, _that.cityName);
      case _MapMarkerAdded() when mapMarkerAdded != null:
        return mapMarkerAdded(_that.markerLocation, _that.cityName);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements MapState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MapState.initial()';
  }
}

/// @nodoc

class _MapLoading implements MapState {
  const _MapLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MapLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MapState.mapLoading()';
  }
}

/// @nodoc

class _MapPermissionDenied implements MapState {
  const _MapPermissionDenied();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MapPermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MapState.mapPermissionDenied()';
  }
}

/// @nodoc

class _MapLocationUpdated implements MapState {
  const _MapLocationUpdated({required this.location, required this.cityName});

  final LatLng location;
  final String cityName;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MapLocationUpdatedCopyWith<_MapLocationUpdated> get copyWith =>
      __$MapLocationUpdatedCopyWithImpl<_MapLocationUpdated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapLocationUpdated &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, cityName);

  @override
  String toString() {
    return 'MapState.mapLocationUpdated(location: $location, cityName: $cityName)';
  }
}

/// @nodoc
abstract mixin class _$MapLocationUpdatedCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$MapLocationUpdatedCopyWith(
          _MapLocationUpdated value, $Res Function(_MapLocationUpdated) _then) =
      __$MapLocationUpdatedCopyWithImpl;
  @useResult
  $Res call({LatLng location, String cityName});
}

/// @nodoc
class __$MapLocationUpdatedCopyWithImpl<$Res>
    implements _$MapLocationUpdatedCopyWith<$Res> {
  __$MapLocationUpdatedCopyWithImpl(this._self, this._then);

  final _MapLocationUpdated _self;
  final $Res Function(_MapLocationUpdated) _then;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? location = null,
    Object? cityName = null,
  }) {
    return _then(_MapLocationUpdated(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      cityName: null == cityName
          ? _self.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _MapMarkerAdded implements MapState {
  const _MapMarkerAdded({required this.markerLocation, required this.cityName});

  final LatLng markerLocation;
  final String cityName;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MapMarkerAddedCopyWith<_MapMarkerAdded> get copyWith =>
      __$MapMarkerAddedCopyWithImpl<_MapMarkerAdded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapMarkerAdded &&
            (identical(other.markerLocation, markerLocation) ||
                other.markerLocation == markerLocation) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, markerLocation, cityName);

  @override
  String toString() {
    return 'MapState.mapMarkerAdded(markerLocation: $markerLocation, cityName: $cityName)';
  }
}

/// @nodoc
abstract mixin class _$MapMarkerAddedCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$MapMarkerAddedCopyWith(
          _MapMarkerAdded value, $Res Function(_MapMarkerAdded) _then) =
      __$MapMarkerAddedCopyWithImpl;
  @useResult
  $Res call({LatLng markerLocation, String cityName});
}

/// @nodoc
class __$MapMarkerAddedCopyWithImpl<$Res>
    implements _$MapMarkerAddedCopyWith<$Res> {
  __$MapMarkerAddedCopyWithImpl(this._self, this._then);

  final _MapMarkerAdded _self;
  final $Res Function(_MapMarkerAdded) _then;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? markerLocation = null,
    Object? cityName = null,
  }) {
    return _then(_MapMarkerAdded(
      markerLocation: null == markerLocation
          ? _self.markerLocation
          : markerLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      cityName: null == cityName
          ? _self.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
