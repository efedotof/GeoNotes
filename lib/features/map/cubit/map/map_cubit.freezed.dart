// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  const _MapMarkerAdded({required this.location, required this.cityName});

  final LatLng location;
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
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, cityName);

  @override
  String toString() {
    return 'MapState.mapMarkerAdded(location: $location, cityName: $cityName)';
  }
}

/// @nodoc
abstract mixin class _$MapMarkerAddedCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$MapMarkerAddedCopyWith(
          _MapMarkerAdded value, $Res Function(_MapMarkerAdded) _then) =
      __$MapMarkerAddedCopyWithImpl;
  @useResult
  $Res call({LatLng location, String cityName});
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
    Object? location = null,
    Object? cityName = null,
  }) {
    return _then(_MapMarkerAdded(
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

// dart format on
