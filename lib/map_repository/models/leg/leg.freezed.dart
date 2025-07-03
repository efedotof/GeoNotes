// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Leg {
  List<Step> get steps;
  double get weight;
  double get duration;
  double get distance;
  String? get summary;

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LegCopyWith<Leg> get copyWith =>
      _$LegCopyWithImpl<Leg>(this as Leg, _$identity);

  /// Serializes this Leg to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Leg &&
            const DeepCollectionEquality().equals(other.steps, steps) &&
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
      const DeepCollectionEquality().hash(steps),
      weight,
      duration,
      distance,
      summary);

  @override
  String toString() {
    return 'Leg(steps: $steps, weight: $weight, duration: $duration, distance: $distance, summary: $summary)';
  }
}

/// @nodoc
abstract mixin class $LegCopyWith<$Res> {
  factory $LegCopyWith(Leg value, $Res Function(Leg) _then) = _$LegCopyWithImpl;
  @useResult
  $Res call(
      {List<Step> steps,
      double weight,
      double duration,
      double distance,
      String? summary});
}

/// @nodoc
class _$LegCopyWithImpl<$Res> implements $LegCopyWith<$Res> {
  _$LegCopyWithImpl(this._self, this._then);

  final Leg _self;
  final $Res Function(Leg) _then;

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? weight = null,
    Object? duration = null,
    Object? distance = null,
    Object? summary = freezed,
  }) {
    return _then(_self.copyWith(
      steps: null == steps
          ? _self.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>,
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

/// Adds pattern-matching-related methods to [Leg].
extension LegPatterns on Leg {
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
    TResult Function(_Leg value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Leg() when $default != null:
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
    TResult Function(_Leg value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Leg():
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
    TResult? Function(_Leg value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Leg() when $default != null:
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
    TResult Function(List<Step> steps, double weight, double duration,
            double distance, String? summary)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Leg() when $default != null:
        return $default(_that.steps, _that.weight, _that.duration,
            _that.distance, _that.summary);
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
    TResult Function(List<Step> steps, double weight, double duration,
            double distance, String? summary)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Leg():
        return $default(_that.steps, _that.weight, _that.duration,
            _that.distance, _that.summary);
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
    TResult? Function(List<Step> steps, double weight, double duration,
            double distance, String? summary)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Leg() when $default != null:
        return $default(_that.steps, _that.weight, _that.duration,
            _that.distance, _that.summary);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Leg implements Leg {
  const _Leg(
      {required final List<Step> steps,
      required this.weight,
      required this.duration,
      required this.distance,
      this.summary})
      : _steps = steps;
  factory _Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);

  final List<Step> _steps;
  @override
  List<Step> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final double weight;
  @override
  final double duration;
  @override
  final double distance;
  @override
  final String? summary;

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LegCopyWith<_Leg> get copyWith =>
      __$LegCopyWithImpl<_Leg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LegToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Leg &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
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
      const DeepCollectionEquality().hash(_steps),
      weight,
      duration,
      distance,
      summary);

  @override
  String toString() {
    return 'Leg(steps: $steps, weight: $weight, duration: $duration, distance: $distance, summary: $summary)';
  }
}

/// @nodoc
abstract mixin class _$LegCopyWith<$Res> implements $LegCopyWith<$Res> {
  factory _$LegCopyWith(_Leg value, $Res Function(_Leg) _then) =
      __$LegCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Step> steps,
      double weight,
      double duration,
      double distance,
      String? summary});
}

/// @nodoc
class __$LegCopyWithImpl<$Res> implements _$LegCopyWith<$Res> {
  __$LegCopyWithImpl(this._self, this._then);

  final _Leg _self;
  final $Res Function(_Leg) _then;

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? steps = null,
    Object? weight = null,
    Object? duration = null,
    Object? distance = null,
    Object? summary = freezed,
  }) {
    return _then(_Leg(
      steps: null == steps
          ? _self._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>,
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
