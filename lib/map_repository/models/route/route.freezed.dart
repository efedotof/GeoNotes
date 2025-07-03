// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Route {
  List<Leg> get legs;
  @JsonKey(name: 'weight_name')
  String get weightName;
  double get weight;
  double get duration;
  double get distance;
  String? get summary;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouteCopyWith<Route> get copyWith =>
      _$RouteCopyWithImpl<Route>(this as Route, _$identity);

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Route &&
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
    return 'Route(legs: $legs, weightName: $weightName, weight: $weight, duration: $duration, distance: $distance, summary: $summary)';
  }
}

/// @nodoc
abstract mixin class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) _then) =
      _$RouteCopyWithImpl;
  @useResult
  $Res call(
      {List<Leg> legs,
      @JsonKey(name: 'weight_name') String weightName,
      double weight,
      double duration,
      double distance,
      String? summary});
}

/// @nodoc
class _$RouteCopyWithImpl<$Res> implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._self, this._then);

  final Route _self;
  final $Res Function(Route) _then;

  /// Create a copy of Route
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

/// Adds pattern-matching-related methods to [Route].
extension RoutePatterns on Route {
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
    TResult Function(_Route value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Route() when $default != null:
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
    TResult Function(_Route value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Route():
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
    TResult? Function(_Route value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Route() when $default != null:
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
            List<Leg> legs,
            @JsonKey(name: 'weight_name') String weightName,
            double weight,
            double duration,
            double distance,
            String? summary)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Route() when $default != null:
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
            List<Leg> legs,
            @JsonKey(name: 'weight_name') String weightName,
            double weight,
            double duration,
            double distance,
            String? summary)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Route():
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
            List<Leg> legs,
            @JsonKey(name: 'weight_name') String weightName,
            double weight,
            double duration,
            double distance,
            String? summary)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Route() when $default != null:
        return $default(_that.legs, _that.weightName, _that.weight,
            _that.duration, _that.distance, _that.summary);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Route implements Route {
  const _Route(
      {required final List<Leg> legs,
      @JsonKey(name: 'weight_name') required this.weightName,
      required this.weight,
      required this.duration,
      required this.distance,
      this.summary})
      : _legs = legs;
  factory _Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  final List<Leg> _legs;
  @override
  List<Leg> get legs {
    if (_legs is EqualUnmodifiableListView) return _legs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_legs);
  }

  @override
  @JsonKey(name: 'weight_name')
  final String weightName;
  @override
  final double weight;
  @override
  final double duration;
  @override
  final double distance;
  @override
  final String? summary;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouteCopyWith<_Route> get copyWith =>
      __$RouteCopyWithImpl<_Route>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RouteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Route &&
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
    return 'Route(legs: $legs, weightName: $weightName, weight: $weight, duration: $duration, distance: $distance, summary: $summary)';
  }
}

/// @nodoc
abstract mixin class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) _then) =
      __$RouteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Leg> legs,
      @JsonKey(name: 'weight_name') String weightName,
      double weight,
      double duration,
      double distance,
      String? summary});
}

/// @nodoc
class __$RouteCopyWithImpl<$Res> implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(this._self, this._then);

  final _Route _self;
  final $Res Function(_Route) _then;

  /// Create a copy of Route
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
    return _then(_Route(
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
