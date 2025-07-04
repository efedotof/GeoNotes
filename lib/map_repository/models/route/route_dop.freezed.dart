// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_dop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteDop {
  @HiveField(0)
  List<Leg> get legs;
  @HiveField(1)
  @JsonKey(name: 'weight_name')
  String get weightName;
  @HiveField(2)
  double get weight;
  @HiveField(3)
  double get duration;
  @HiveField(4)
  double get distance;
  @HiveField(5)
  String? get summary;

  /// Create a copy of RouteDop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouteDopCopyWith<RouteDop> get copyWith =>
      _$RouteDopCopyWithImpl<RouteDop>(this as RouteDop, _$identity);

  /// Serializes this RouteDop to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RouteDop &&
            const DeepCollectionEquality().equals(other.legs, legs) &&
            (identical(other.weightName, weightName) ||
                other.weightName == weightName) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(legs),
      weightName,
      weight,
      duration,
      distance,
      summary);

  @override
  String toString() {
    return 'RouteDop(legs: $legs, weightName: $weightName, weight: $weight, duration: $duration, distance: $distance, summary: $summary)';
  }
}

/// @nodoc
abstract mixin class $RouteDopCopyWith<$Res> {
  factory $RouteDopCopyWith(RouteDop value, $Res Function(RouteDop) _then) =
      _$RouteDopCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) List<Leg> legs,
      @HiveField(1) @JsonKey(name: 'weight_name') String weightName,
      @HiveField(2) double weight,
      @HiveField(3) double duration,
      @HiveField(4) double distance,
      @HiveField(5) String? summary});
}

/// @nodoc
class _$RouteDopCopyWithImpl<$Res> implements $RouteDopCopyWith<$Res> {
  _$RouteDopCopyWithImpl(this._self, this._then);

  final RouteDop _self;
  final $Res Function(RouteDop) _then;

  /// Create a copy of RouteDop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? legs = null,
    Object? weightName = null,
    Object? weight = null,
    Object? duration = null,
    Object? distance = null,
    Object? summary = freezed,
  }) {
    return _then(_self.copyWith(
      legs: null == legs
          ? _self.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<Leg>,
      weightName: null == weightName
          ? _self.weightName
          : weightName // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RouteDop].
extension RouteDopPatterns on RouteDop {
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
    TResult Function(_RouteDop value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RouteDop() when $default != null:
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
    TResult Function(_RouteDop value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouteDop():
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
    TResult? Function(_RouteDop value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouteDop() when $default != null:
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
            @HiveField(0) List<Leg> legs,
            @HiveField(1) @JsonKey(name: 'weight_name') String weightName,
            @HiveField(2) double weight,
            @HiveField(3) double duration,
            @HiveField(4) double distance,
            @HiveField(5) String? summary)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RouteDop() when $default != null:
        return $default(_that.legs, _that.weightName, _that.weight,
            _that.duration, _that.distance, _that.summary);
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
            @HiveField(0) List<Leg> legs,
            @HiveField(1) @JsonKey(name: 'weight_name') String weightName,
            @HiveField(2) double weight,
            @HiveField(3) double duration,
            @HiveField(4) double distance,
            @HiveField(5) String? summary)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouteDop():
        return $default(_that.legs, _that.weightName, _that.weight,
            _that.duration, _that.distance, _that.summary);
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
            @HiveField(0) List<Leg> legs,
            @HiveField(1) @JsonKey(name: 'weight_name') String weightName,
            @HiveField(2) double weight,
            @HiveField(3) double duration,
            @HiveField(4) double distance,
            @HiveField(5) String? summary)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouteDop() when $default != null:
        return $default(_that.legs, _that.weightName, _that.weight,
            _that.duration, _that.distance, _that.summary);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RouteDop implements RouteDop {
  const _RouteDop(
      {@HiveField(0) required final List<Leg> legs,
      @HiveField(1) @JsonKey(name: 'weight_name') required this.weightName,
      @HiveField(2) required this.weight,
      @HiveField(3) required this.duration,
      @HiveField(4) required this.distance,
      @HiveField(5) this.summary})
      : _legs = legs;
  factory _RouteDop.fromJson(Map<String, dynamic> json) =>
      _$RouteDopFromJson(json);

  final List<Leg> _legs;
  @override
  @HiveField(0)
  List<Leg> get legs {
    if (_legs is EqualUnmodifiableListView) return _legs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_legs);
  }

  @override
  @HiveField(1)
  @JsonKey(name: 'weight_name')
  final String weightName;
  @override
  @HiveField(2)
  final double weight;
  @override
  @HiveField(3)
  final double duration;
  @override
  @HiveField(4)
  final double distance;
  @override
  @HiveField(5)
  final String? summary;

  /// Create a copy of RouteDop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouteDopCopyWith<_RouteDop> get copyWith =>
      __$RouteDopCopyWithImpl<_RouteDop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RouteDopToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RouteDop &&
            const DeepCollectionEquality().equals(other._legs, _legs) &&
            (identical(other.weightName, weightName) ||
                other.weightName == weightName) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_legs),
      weightName,
      weight,
      duration,
      distance,
      summary);

  @override
  String toString() {
    return 'RouteDop(legs: $legs, weightName: $weightName, weight: $weight, duration: $duration, distance: $distance, summary: $summary)';
  }
}

/// @nodoc
abstract mixin class _$RouteDopCopyWith<$Res>
    implements $RouteDopCopyWith<$Res> {
  factory _$RouteDopCopyWith(_RouteDop value, $Res Function(_RouteDop) _then) =
      __$RouteDopCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<Leg> legs,
      @HiveField(1) @JsonKey(name: 'weight_name') String weightName,
      @HiveField(2) double weight,
      @HiveField(3) double duration,
      @HiveField(4) double distance,
      @HiveField(5) String? summary});
}

/// @nodoc
class __$RouteDopCopyWithImpl<$Res> implements _$RouteDopCopyWith<$Res> {
  __$RouteDopCopyWithImpl(this._self, this._then);

  final _RouteDop _self;
  final $Res Function(_RouteDop) _then;

  /// Create a copy of RouteDop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? legs = null,
    Object? weightName = null,
    Object? weight = null,
    Object? duration = null,
    Object? distance = null,
    Object? summary = freezed,
  }) {
    return _then(_RouteDop(
      legs: null == legs
          ? _self._legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<Leg>,
      weightName: null == weightName
          ? _self.weightName
          : weightName // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
