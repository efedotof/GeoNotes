// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Step {
  List<Intersection> get intersections;
  @JsonKey(name: 'driving_side')
  String get drivingSide;
  String get geometry;
  Maneuver get maneuver;
  String get name;
  String get mode;
  double get weight;
  double get duration;
  double get distance;

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepCopyWith<Step> get copyWith =>
      _$StepCopyWithImpl<Step>(this as Step, _$identity);

  /// Serializes this Step to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Step &&
            const DeepCollectionEquality()
                .equals(other.intersections, intersections) &&
            (identical(other.drivingSide, drivingSide) ||
                other.drivingSide == drivingSide) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.maneuver, maneuver) ||
                other.maneuver == maneuver) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(intersections),
      drivingSide,
      geometry,
      maneuver,
      name,
      mode,
      weight,
      duration,
      distance);

  @override
  String toString() {
    return 'Step(intersections: $intersections, drivingSide: $drivingSide, geometry: $geometry, maneuver: $maneuver, name: $name, mode: $mode, weight: $weight, duration: $duration, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class $StepCopyWith<$Res> {
  factory $StepCopyWith(Step value, $Res Function(Step) _then) =
      _$StepCopyWithImpl;
  @useResult
  $Res call(
      {List<Intersection> intersections,
      @JsonKey(name: 'driving_side') String drivingSide,
      String geometry,
      Maneuver maneuver,
      String name,
      String mode,
      double weight,
      double duration,
      double distance});

  $ManeuverCopyWith<$Res> get maneuver;
}

/// @nodoc
class _$StepCopyWithImpl<$Res> implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(this._self, this._then);

  final Step _self;
  final $Res Function(Step) _then;

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intersections = null,
    Object? drivingSide = null,
    Object? geometry = null,
    Object? maneuver = null,
    Object? name = null,
    Object? mode = null,
    Object? weight = null,
    Object? duration = null,
    Object? distance = null,
  }) {
    return _then(_self.copyWith(
      intersections: null == intersections
          ? _self.intersections
          : intersections // ignore: cast_nullable_to_non_nullable
              as List<Intersection>,
      drivingSide: null == drivingSide
          ? _self.drivingSide
          : drivingSide // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: null == geometry
          ? _self.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as String,
      maneuver: null == maneuver
          ? _self.maneuver
          : maneuver // ignore: cast_nullable_to_non_nullable
              as Maneuver,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
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
    ));
  }

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManeuverCopyWith<$Res> get maneuver {
    return $ManeuverCopyWith<$Res>(_self.maneuver, (value) {
      return _then(_self.copyWith(maneuver: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Step].
extension StepPatterns on Step {
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
    TResult Function(_Step value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Step() when $default != null:
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
    TResult Function(_Step value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Step():
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
    TResult? Function(_Step value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Step() when $default != null:
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
            List<Intersection> intersections,
            @JsonKey(name: 'driving_side') String drivingSide,
            String geometry,
            Maneuver maneuver,
            String name,
            String mode,
            double weight,
            double duration,
            double distance)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Step() when $default != null:
        return $default(
            _that.intersections,
            _that.drivingSide,
            _that.geometry,
            _that.maneuver,
            _that.name,
            _that.mode,
            _that.weight,
            _that.duration,
            _that.distance);
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
            List<Intersection> intersections,
            @JsonKey(name: 'driving_side') String drivingSide,
            String geometry,
            Maneuver maneuver,
            String name,
            String mode,
            double weight,
            double duration,
            double distance)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Step():
        return $default(
            _that.intersections,
            _that.drivingSide,
            _that.geometry,
            _that.maneuver,
            _that.name,
            _that.mode,
            _that.weight,
            _that.duration,
            _that.distance);
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
            List<Intersection> intersections,
            @JsonKey(name: 'driving_side') String drivingSide,
            String geometry,
            Maneuver maneuver,
            String name,
            String mode,
            double weight,
            double duration,
            double distance)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Step() when $default != null:
        return $default(
            _that.intersections,
            _that.drivingSide,
            _that.geometry,
            _that.maneuver,
            _that.name,
            _that.mode,
            _that.weight,
            _that.duration,
            _that.distance);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Step implements Step {
  const _Step(
      {required final List<Intersection> intersections,
      @JsonKey(name: 'driving_side') required this.drivingSide,
      required this.geometry,
      required this.maneuver,
      required this.name,
      required this.mode,
      required this.weight,
      required this.duration,
      required this.distance})
      : _intersections = intersections;
  factory _Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);

  final List<Intersection> _intersections;
  @override
  List<Intersection> get intersections {
    if (_intersections is EqualUnmodifiableListView) return _intersections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_intersections);
  }

  @override
  @JsonKey(name: 'driving_side')
  final String drivingSide;
  @override
  final String geometry;
  @override
  final Maneuver maneuver;
  @override
  final String name;
  @override
  final String mode;
  @override
  final double weight;
  @override
  final double duration;
  @override
  final double distance;

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StepCopyWith<_Step> get copyWith =>
      __$StepCopyWithImpl<_Step>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Step &&
            const DeepCollectionEquality()
                .equals(other._intersections, _intersections) &&
            (identical(other.drivingSide, drivingSide) ||
                other.drivingSide == drivingSide) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.maneuver, maneuver) ||
                other.maneuver == maneuver) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_intersections),
      drivingSide,
      geometry,
      maneuver,
      name,
      mode,
      weight,
      duration,
      distance);

  @override
  String toString() {
    return 'Step(intersections: $intersections, drivingSide: $drivingSide, geometry: $geometry, maneuver: $maneuver, name: $name, mode: $mode, weight: $weight, duration: $duration, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class _$StepCopyWith<$Res> implements $StepCopyWith<$Res> {
  factory _$StepCopyWith(_Step value, $Res Function(_Step) _then) =
      __$StepCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Intersection> intersections,
      @JsonKey(name: 'driving_side') String drivingSide,
      String geometry,
      Maneuver maneuver,
      String name,
      String mode,
      double weight,
      double duration,
      double distance});

  @override
  $ManeuverCopyWith<$Res> get maneuver;
}

/// @nodoc
class __$StepCopyWithImpl<$Res> implements _$StepCopyWith<$Res> {
  __$StepCopyWithImpl(this._self, this._then);

  final _Step _self;
  final $Res Function(_Step) _then;

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? intersections = null,
    Object? drivingSide = null,
    Object? geometry = null,
    Object? maneuver = null,
    Object? name = null,
    Object? mode = null,
    Object? weight = null,
    Object? duration = null,
    Object? distance = null,
  }) {
    return _then(_Step(
      intersections: null == intersections
          ? _self._intersections
          : intersections // ignore: cast_nullable_to_non_nullable
              as List<Intersection>,
      drivingSide: null == drivingSide
          ? _self.drivingSide
          : drivingSide // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: null == geometry
          ? _self.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as String,
      maneuver: null == maneuver
          ? _self.maneuver
          : maneuver // ignore: cast_nullable_to_non_nullable
              as Maneuver,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
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
    ));
  }

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManeuverCopyWith<$Res> get maneuver {
    return $ManeuverCopyWith<$Res>(_self.maneuver, (value) {
      return _then(_self.copyWith(maneuver: value));
    });
  }
}

// dart format on
