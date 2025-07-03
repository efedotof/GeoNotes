// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_name_from_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityNameFromCoordinates {
  double get latitude;
  double get longitude;

  /// Create a copy of CityNameFromCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CityNameFromCoordinatesCopyWith<CityNameFromCoordinates> get copyWith =>
      _$CityNameFromCoordinatesCopyWithImpl<CityNameFromCoordinates>(
          this as CityNameFromCoordinates, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CityNameFromCoordinates &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @override
  String toString() {
    return 'CityNameFromCoordinates(latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $CityNameFromCoordinatesCopyWith<$Res> {
  factory $CityNameFromCoordinatesCopyWith(CityNameFromCoordinates value,
          $Res Function(CityNameFromCoordinates) _then) =
      _$CityNameFromCoordinatesCopyWithImpl;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$CityNameFromCoordinatesCopyWithImpl<$Res>
    implements $CityNameFromCoordinatesCopyWith<$Res> {
  _$CityNameFromCoordinatesCopyWithImpl(this._self, this._then);

  final CityNameFromCoordinates _self;
  final $Res Function(CityNameFromCoordinates) _then;

  /// Create a copy of CityNameFromCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_self.copyWith(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [CityNameFromCoordinates].
extension CityNameFromCoordinatesPatterns on CityNameFromCoordinates {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CityNameFromCoordinates value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CityNameFromCoordinates() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_CityNameFromCoordinates value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CityNameFromCoordinates():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CityNameFromCoordinates value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CityNameFromCoordinates() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(double latitude, double longitude)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CityNameFromCoordinates() when $default != null:
        return $default(_that.latitude, _that.longitude);
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
  TResult when<TResult extends Object?>(
    TResult Function(double latitude, double longitude) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CityNameFromCoordinates():
        return $default(_that.latitude, _that.longitude);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(double latitude, double longitude)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CityNameFromCoordinates() when $default != null:
        return $default(_that.latitude, _that.longitude);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CityNameFromCoordinates implements CityNameFromCoordinates {
  _CityNameFromCoordinates({required this.latitude, required this.longitude});

  @override
  final double latitude;
  @override
  final double longitude;

  /// Create a copy of CityNameFromCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CityNameFromCoordinatesCopyWith<_CityNameFromCoordinates> get copyWith =>
      __$CityNameFromCoordinatesCopyWithImpl<_CityNameFromCoordinates>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CityNameFromCoordinates &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @override
  String toString() {
    return 'CityNameFromCoordinates(latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$CityNameFromCoordinatesCopyWith<$Res>
    implements $CityNameFromCoordinatesCopyWith<$Res> {
  factory _$CityNameFromCoordinatesCopyWith(_CityNameFromCoordinates value,
          $Res Function(_CityNameFromCoordinates) _then) =
      __$CityNameFromCoordinatesCopyWithImpl;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$CityNameFromCoordinatesCopyWithImpl<$Res>
    implements _$CityNameFromCoordinatesCopyWith<$Res> {
  __$CityNameFromCoordinatesCopyWithImpl(this._self, this._then);

  final _CityNameFromCoordinates _self;
  final $Res Function(_CityNameFromCoordinates) _then;

  /// Create a copy of CityNameFromCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_CityNameFromCoordinates(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
