// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationModel {
  @HiveField(0)
  @JsonKey(name: 'display_name')
  String get displayName;
  @HiveField(1)
  @JsonKey(name: 'lat', fromJson: _stringToDouble, toJson: _doubleToString)
  double get latitude;
  @HiveField(2)
  @JsonKey(name: 'lon', fromJson: _stringToDouble, toJson: _doubleToString)
  double get longitude;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<LocationModel> get copyWith =>
      _$LocationModelCopyWithImpl<LocationModel>(
          this as LocationModel, _$identity);

  /// Serializes this LocationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationModel &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, displayName, latitude, longitude);

  @override
  String toString() {
    return 'LocationModel(displayName: $displayName, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) _then) =
      _$LocationModelCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'display_name') String displayName,
      @HiveField(1)
      @JsonKey(name: 'lat', fromJson: _stringToDouble, toJson: _doubleToString)
      double latitude,
      @HiveField(2)
      @JsonKey(name: 'lon', fromJson: _stringToDouble, toJson: _doubleToString)
      double longitude});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._self, this._then);

  final LocationModel _self;
  final $Res Function(LocationModel) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_self.copyWith(
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
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

/// Adds pattern-matching-related methods to [LocationModel].
extension LocationModelPatterns on LocationModel {
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
    TResult Function(_LocationModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationModel() when $default != null:
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
    TResult Function(_LocationModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationModel():
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
    TResult? Function(_LocationModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationModel() when $default != null:
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
    TResult Function(
            @HiveField(0) @JsonKey(name: 'display_name') String displayName,
            @HiveField(1)
            @JsonKey(
                name: 'lat', fromJson: _stringToDouble, toJson: _doubleToString)
            double latitude,
            @HiveField(2)
            @JsonKey(
                name: 'lon', fromJson: _stringToDouble, toJson: _doubleToString)
            double longitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationModel() when $default != null:
        return $default(_that.displayName, _that.latitude, _that.longitude);
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
    TResult Function(
            @HiveField(0) @JsonKey(name: 'display_name') String displayName,
            @HiveField(1)
            @JsonKey(
                name: 'lat', fromJson: _stringToDouble, toJson: _doubleToString)
            double latitude,
            @HiveField(2)
            @JsonKey(
                name: 'lon', fromJson: _stringToDouble, toJson: _doubleToString)
            double longitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationModel():
        return $default(_that.displayName, _that.latitude, _that.longitude);
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
    TResult? Function(
            @HiveField(0) @JsonKey(name: 'display_name') String displayName,
            @HiveField(1)
            @JsonKey(
                name: 'lat', fromJson: _stringToDouble, toJson: _doubleToString)
            double latitude,
            @HiveField(2)
            @JsonKey(
                name: 'lon', fromJson: _stringToDouble, toJson: _doubleToString)
            double longitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationModel() when $default != null:
        return $default(_that.displayName, _that.latitude, _that.longitude);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LocationModel implements LocationModel {
  const _LocationModel(
      {@HiveField(0) @JsonKey(name: 'display_name') required this.displayName,
      @HiveField(1)
      @JsonKey(name: 'lat', fromJson: _stringToDouble, toJson: _doubleToString)
      required this.latitude,
      @HiveField(2)
      @JsonKey(name: 'lon', fromJson: _stringToDouble, toJson: _doubleToString)
      required this.longitude});
  factory _LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @HiveField(1)
  @JsonKey(name: 'lat', fromJson: _stringToDouble, toJson: _doubleToString)
  final double latitude;
  @override
  @HiveField(2)
  @JsonKey(name: 'lon', fromJson: _stringToDouble, toJson: _doubleToString)
  final double longitude;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      __$LocationModelCopyWithImpl<_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationModel &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, displayName, latitude, longitude);

  @override
  String toString() {
    return 'LocationModel(displayName: $displayName, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$LocationModelCopyWith(
          _LocationModel value, $Res Function(_LocationModel) _then) =
      __$LocationModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'display_name') String displayName,
      @HiveField(1)
      @JsonKey(name: 'lat', fromJson: _stringToDouble, toJson: _doubleToString)
      double latitude,
      @HiveField(2)
      @JsonKey(name: 'lon', fromJson: _stringToDouble, toJson: _doubleToString)
      double longitude});
}

/// @nodoc
class __$LocationModelCopyWithImpl<$Res>
    implements _$LocationModelCopyWith<$Res> {
  __$LocationModelCopyWithImpl(this._self, this._then);

  final _LocationModel _self;
  final $Res Function(_LocationModel) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? displayName = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_LocationModel(
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
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
