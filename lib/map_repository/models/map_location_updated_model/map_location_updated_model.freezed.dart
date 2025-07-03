// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_location_updated_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MapLocationUpdatedModel {
  CityModel? get cityModel;
  LatLng? get location;

  /// Create a copy of MapLocationUpdatedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MapLocationUpdatedModelCopyWith<MapLocationUpdatedModel> get copyWith =>
      _$MapLocationUpdatedModelCopyWithImpl<MapLocationUpdatedModel>(
          this as MapLocationUpdatedModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapLocationUpdatedModel &&
            (identical(other.cityModel, cityModel) ||
                other.cityModel == cityModel) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityModel, location);

  @override
  String toString() {
    return 'MapLocationUpdatedModel(cityModel: $cityModel, location: $location)';
  }
}

/// @nodoc
abstract mixin class $MapLocationUpdatedModelCopyWith<$Res> {
  factory $MapLocationUpdatedModelCopyWith(MapLocationUpdatedModel value,
          $Res Function(MapLocationUpdatedModel) _then) =
      _$MapLocationUpdatedModelCopyWithImpl;
  @useResult
  $Res call({CityModel? cityModel, LatLng? location});

  $CityModelCopyWith<$Res>? get cityModel;
}

/// @nodoc
class _$MapLocationUpdatedModelCopyWithImpl<$Res>
    implements $MapLocationUpdatedModelCopyWith<$Res> {
  _$MapLocationUpdatedModelCopyWithImpl(this._self, this._then);

  final MapLocationUpdatedModel _self;
  final $Res Function(MapLocationUpdatedModel) _then;

  /// Create a copy of MapLocationUpdatedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityModel = freezed,
    Object? location = freezed,
  }) {
    return _then(_self.copyWith(
      cityModel: freezed == cityModel
          ? _self.cityModel
          : cityModel // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }

  /// Create a copy of MapLocationUpdatedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get cityModel {
    if (_self.cityModel == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_self.cityModel!, (value) {
      return _then(_self.copyWith(cityModel: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MapLocationUpdatedModel].
extension MapLocationUpdatedModelPatterns on MapLocationUpdatedModel {
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
    TResult Function(_MapLocationUpdatedModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MapLocationUpdatedModel() when $default != null:
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
    TResult Function(_MapLocationUpdatedModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocationUpdatedModel():
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
    TResult? Function(_MapLocationUpdatedModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocationUpdatedModel() when $default != null:
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
    TResult Function(CityModel? cityModel, LatLng? location)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MapLocationUpdatedModel() when $default != null:
        return $default(_that.cityModel, _that.location);
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
    TResult Function(CityModel? cityModel, LatLng? location) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocationUpdatedModel():
        return $default(_that.cityModel, _that.location);
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
    TResult? Function(CityModel? cityModel, LatLng? location)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocationUpdatedModel() when $default != null:
        return $default(_that.cityModel, _that.location);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MapLocationUpdatedModel implements MapLocationUpdatedModel {
  _MapLocationUpdatedModel({required this.cityModel, required this.location});

  @override
  final CityModel? cityModel;
  @override
  final LatLng? location;

  /// Create a copy of MapLocationUpdatedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MapLocationUpdatedModelCopyWith<_MapLocationUpdatedModel> get copyWith =>
      __$MapLocationUpdatedModelCopyWithImpl<_MapLocationUpdatedModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapLocationUpdatedModel &&
            (identical(other.cityModel, cityModel) ||
                other.cityModel == cityModel) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityModel, location);

  @override
  String toString() {
    return 'MapLocationUpdatedModel(cityModel: $cityModel, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$MapLocationUpdatedModelCopyWith<$Res>
    implements $MapLocationUpdatedModelCopyWith<$Res> {
  factory _$MapLocationUpdatedModelCopyWith(_MapLocationUpdatedModel value,
          $Res Function(_MapLocationUpdatedModel) _then) =
      __$MapLocationUpdatedModelCopyWithImpl;
  @override
  @useResult
  $Res call({CityModel? cityModel, LatLng? location});

  @override
  $CityModelCopyWith<$Res>? get cityModel;
}

/// @nodoc
class __$MapLocationUpdatedModelCopyWithImpl<$Res>
    implements _$MapLocationUpdatedModelCopyWith<$Res> {
  __$MapLocationUpdatedModelCopyWithImpl(this._self, this._then);

  final _MapLocationUpdatedModel _self;
  final $Res Function(_MapLocationUpdatedModel) _then;

  /// Create a copy of MapLocationUpdatedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cityModel = freezed,
    Object? location = freezed,
  }) {
    return _then(_MapLocationUpdatedModel(
      cityModel: freezed == cityModel
          ? _self.cityModel
          : cityModel // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }

  /// Create a copy of MapLocationUpdatedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get cityModel {
    if (_self.cityModel == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_self.cityModel!, (value) {
      return _then(_self.copyWith(cityModel: value));
    });
  }
}

// dart format on
