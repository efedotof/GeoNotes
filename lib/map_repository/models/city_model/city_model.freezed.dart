// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityModel {
  @HiveField(0)
  String get name;
  @HiveField(1)
  double get idx;
  @HiveField(2)
  double get idy;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<CityModel> get copyWith =>
      _$CityModelCopyWithImpl<CityModel>(this as CityModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CityModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.idy, idy) || other.idy == idy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, idx, idy);

  @override
  String toString() {
    return 'CityModel(name: $name, idx: $idx, idy: $idy)';
  }
}

/// @nodoc
abstract mixin class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) _then) =
      _$CityModelCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) double idx,
      @HiveField(2) double idy});
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res> implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._self, this._then);

  final CityModel _self;
  final $Res Function(CityModel) _then;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? idx = null,
    Object? idy = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      idx: null == idx
          ? _self.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as double,
      idy: null == idy
          ? _self.idy
          : idy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [CityModel].
extension CityModelPatterns on CityModel {
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
    TResult Function(_CityModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CityModel() when $default != null:
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
    TResult Function(_CityModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CityModel():
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
    TResult? Function(_CityModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CityModel() when $default != null:
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
    TResult Function(@HiveField(0) String name, @HiveField(1) double idx,
            @HiveField(2) double idy)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CityModel() when $default != null:
        return $default(_that.name, _that.idx, _that.idy);
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
    TResult Function(@HiveField(0) String name, @HiveField(1) double idx,
            @HiveField(2) double idy)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CityModel():
        return $default(_that.name, _that.idx, _that.idy);
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
    TResult? Function(@HiveField(0) String name, @HiveField(1) double idx,
            @HiveField(2) double idy)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CityModel() when $default != null:
        return $default(_that.name, _that.idx, _that.idy);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CityModel implements CityModel {
  const _CityModel(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.idx,
      @HiveField(2) required this.idy});

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final double idx;
  @override
  @HiveField(2)
  final double idy;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CityModelCopyWith<_CityModel> get copyWith =>
      __$CityModelCopyWithImpl<_CityModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CityModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.idy, idy) || other.idy == idy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, idx, idy);

  @override
  String toString() {
    return 'CityModel(name: $name, idx: $idx, idy: $idy)';
  }
}

/// @nodoc
abstract mixin class _$CityModelCopyWith<$Res>
    implements $CityModelCopyWith<$Res> {
  factory _$CityModelCopyWith(
          _CityModel value, $Res Function(_CityModel) _then) =
      __$CityModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) double idx,
      @HiveField(2) double idy});
}

/// @nodoc
class __$CityModelCopyWithImpl<$Res> implements _$CityModelCopyWith<$Res> {
  __$CityModelCopyWithImpl(this._self, this._then);

  final _CityModel _self;
  final $Res Function(_CityModel) _then;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? idx = null,
    Object? idy = null,
  }) {
    return _then(_CityModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      idx: null == idx
          ? _self.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as double,
      idy: null == idy
          ? _self.idy
          : idy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
