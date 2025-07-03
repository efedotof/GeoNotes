// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reverse_geocoding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReverseGeocodingModel {
  String get displayName;
  double get lat;
  double get lon;

  /// Create a copy of ReverseGeocodingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReverseGeocodingModelCopyWith<ReverseGeocodingModel> get copyWith =>
      _$ReverseGeocodingModelCopyWithImpl<ReverseGeocodingModel>(
          this as ReverseGeocodingModel, _$identity);

  /// Serializes this ReverseGeocodingModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReverseGeocodingModel &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, displayName, lat, lon);

  @override
  String toString() {
    return 'ReverseGeocodingModel(displayName: $displayName, lat: $lat, lon: $lon)';
  }
}

/// @nodoc
abstract mixin class $ReverseGeocodingModelCopyWith<$Res> {
  factory $ReverseGeocodingModelCopyWith(ReverseGeocodingModel value,
          $Res Function(ReverseGeocodingModel) _then) =
      _$ReverseGeocodingModelCopyWithImpl;
  @useResult
  $Res call({String displayName, double lat, double lon});
}

/// @nodoc
class _$ReverseGeocodingModelCopyWithImpl<$Res>
    implements $ReverseGeocodingModelCopyWith<$Res> {
  _$ReverseGeocodingModelCopyWithImpl(this._self, this._then);

  final ReverseGeocodingModel _self;
  final $Res Function(ReverseGeocodingModel) _then;

  /// Create a copy of ReverseGeocodingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_self.copyWith(
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _self.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReverseGeocodingModel].
extension ReverseGeocodingModelPatterns on ReverseGeocodingModel {
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
    TResult Function(_ReverseGeocodingModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodingModel() when $default != null:
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
    TResult Function(_ReverseGeocodingModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodingModel():
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
    TResult? Function(_ReverseGeocodingModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodingModel() when $default != null:
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
    TResult Function(String displayName, double lat, double lon)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodingModel() when $default != null:
        return $default(_that.displayName, _that.lat, _that.lon);
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
    TResult Function(String displayName, double lat, double lon) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodingModel():
        return $default(_that.displayName, _that.lat, _that.lon);
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
    TResult? Function(String displayName, double lat, double lon)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodingModel() when $default != null:
        return $default(_that.displayName, _that.lat, _that.lon);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReverseGeocodingModel implements ReverseGeocodingModel {
  _ReverseGeocodingModel(
      {required this.displayName, required this.lat, required this.lon});
  factory _ReverseGeocodingModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodingModelFromJson(json);

  @override
  final String displayName;
  @override
  final double lat;
  @override
  final double lon;

  /// Create a copy of ReverseGeocodingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReverseGeocodingModelCopyWith<_ReverseGeocodingModel> get copyWith =>
      __$ReverseGeocodingModelCopyWithImpl<_ReverseGeocodingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReverseGeocodingModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseGeocodingModel &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, displayName, lat, lon);

  @override
  String toString() {
    return 'ReverseGeocodingModel(displayName: $displayName, lat: $lat, lon: $lon)';
  }
}

/// @nodoc
abstract mixin class _$ReverseGeocodingModelCopyWith<$Res>
    implements $ReverseGeocodingModelCopyWith<$Res> {
  factory _$ReverseGeocodingModelCopyWith(_ReverseGeocodingModel value,
          $Res Function(_ReverseGeocodingModel) _then) =
      __$ReverseGeocodingModelCopyWithImpl;
  @override
  @useResult
  $Res call({String displayName, double lat, double lon});
}

/// @nodoc
class __$ReverseGeocodingModelCopyWithImpl<$Res>
    implements _$ReverseGeocodingModelCopyWith<$Res> {
  __$ReverseGeocodingModelCopyWithImpl(this._self, this._then);

  final _ReverseGeocodingModel _self;
  final $Res Function(_ReverseGeocodingModel) _then;

  /// Create a copy of ReverseGeocodingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? displayName = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_ReverseGeocodingModel(
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _self.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
