// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StepModel {
  @HiveField(0)
  List<Intersection> get intersections;
  @HiveField(1)
  @JsonKey(name: 'driving_side')
  String get drivingSide;
  @HiveField(2)
  String get geometry;
  @HiveField(3)
  Maneuver get maneuver;
  @HiveField(4)
  String get name;
  @HiveField(5)
  String get mode;
  @HiveField(6)
  double get weight;
  @HiveField(7)
  double get duration;
  @HiveField(8)
  double get distance;

  /// Create a copy of StepModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepModelCopyWith<StepModel> get copyWith =>
      _$StepModelCopyWithImpl<StepModel>(this as StepModel, _$identity);

  /// Serializes this StepModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepModel &&
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
    return 'StepModel(intersections: $intersections, drivingSide: $drivingSide, geometry: $geometry, maneuver: $maneuver, name: $name, mode: $mode, weight: $weight, duration: $duration, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class $StepModelCopyWith<$Res> {
  factory $StepModelCopyWith(StepModel value, $Res Function(StepModel) _then) =
      _$StepModelCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) List<Intersection> intersections,
      @HiveField(1) @JsonKey(name: 'driving_side') String drivingSide,
      @HiveField(2) String geometry,
      @HiveField(3) Maneuver maneuver,
      @HiveField(4) String name,
      @HiveField(5) String mode,
      @HiveField(6) double weight,
      @HiveField(7) double duration,
      @HiveField(8) double distance});

  $ManeuverCopyWith<$Res> get maneuver;
}

/// @nodoc
class _$StepModelCopyWithImpl<$Res> implements $StepModelCopyWith<$Res> {
  _$StepModelCopyWithImpl(this._self, this._then);

  final StepModel _self;
  final $Res Function(StepModel) _then;

  /// Create a copy of StepModel
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

  /// Create a copy of StepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManeuverCopyWith<$Res> get maneuver {
    return $ManeuverCopyWith<$Res>(_self.maneuver, (value) {
      return _then(_self.copyWith(maneuver: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StepModel].
extension StepModelPatterns on StepModel {
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
    TResult Function(_StepModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StepModel() when $default != null:
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
    TResult Function(_StepModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepModel():
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
    TResult? Function(_StepModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepModel() when $default != null:
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
            @HiveField(0) List<Intersection> intersections,
            @HiveField(1) @JsonKey(name: 'driving_side') String drivingSide,
            @HiveField(2) String geometry,
            @HiveField(3) Maneuver maneuver,
            @HiveField(4) String name,
            @HiveField(5) String mode,
            @HiveField(6) double weight,
            @HiveField(7) double duration,
            @HiveField(8) double distance)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StepModel() when $default != null:
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
            @HiveField(0) List<Intersection> intersections,
            @HiveField(1) @JsonKey(name: 'driving_side') String drivingSide,
            @HiveField(2) String geometry,
            @HiveField(3) Maneuver maneuver,
            @HiveField(4) String name,
            @HiveField(5) String mode,
            @HiveField(6) double weight,
            @HiveField(7) double duration,
            @HiveField(8) double distance)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepModel():
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
            @HiveField(0) List<Intersection> intersections,
            @HiveField(1) @JsonKey(name: 'driving_side') String drivingSide,
            @HiveField(2) String geometry,
            @HiveField(3) Maneuver maneuver,
            @HiveField(4) String name,
            @HiveField(5) String mode,
            @HiveField(6) double weight,
            @HiveField(7) double duration,
            @HiveField(8) double distance)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepModel() when $default != null:
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
class _StepModel implements StepModel {
  const _StepModel(
      {@HiveField(0) required final List<Intersection> intersections,
      @HiveField(1) @JsonKey(name: 'driving_side') required this.drivingSide,
      @HiveField(2) required this.geometry,
      @HiveField(3) required this.maneuver,
      @HiveField(4) required this.name,
      @HiveField(5) required this.mode,
      @HiveField(6) required this.weight,
      @HiveField(7) required this.duration,
      @HiveField(8) required this.distance})
      : _intersections = intersections;
  factory _StepModel.fromJson(Map<String, dynamic> json) =>
      _$StepModelFromJson(json);

  final List<Intersection> _intersections;
  @override
  @HiveField(0)
  List<Intersection> get intersections {
    if (_intersections is EqualUnmodifiableListView) return _intersections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_intersections);
  }

  @override
  @HiveField(1)
  @JsonKey(name: 'driving_side')
  final String drivingSide;
  @override
  @HiveField(2)
  final String geometry;
  @override
  @HiveField(3)
  final Maneuver maneuver;
  @override
  @HiveField(4)
  final String name;
  @override
  @HiveField(5)
  final String mode;
  @override
  @HiveField(6)
  final double weight;
  @override
  @HiveField(7)
  final double duration;
  @override
  @HiveField(8)
  final double distance;

  /// Create a copy of StepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StepModelCopyWith<_StepModel> get copyWith =>
      __$StepModelCopyWithImpl<_StepModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StepModel &&
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
    return 'StepModel(intersections: $intersections, drivingSide: $drivingSide, geometry: $geometry, maneuver: $maneuver, name: $name, mode: $mode, weight: $weight, duration: $duration, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class _$StepModelCopyWith<$Res>
    implements $StepModelCopyWith<$Res> {
  factory _$StepModelCopyWith(
          _StepModel value, $Res Function(_StepModel) _then) =
      __$StepModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<Intersection> intersections,
      @HiveField(1) @JsonKey(name: 'driving_side') String drivingSide,
      @HiveField(2) String geometry,
      @HiveField(3) Maneuver maneuver,
      @HiveField(4) String name,
      @HiveField(5) String mode,
      @HiveField(6) double weight,
      @HiveField(7) double duration,
      @HiveField(8) double distance});

  @override
  $ManeuverCopyWith<$Res> get maneuver;
}

/// @nodoc
class __$StepModelCopyWithImpl<$Res> implements _$StepModelCopyWith<$Res> {
  __$StepModelCopyWithImpl(this._self, this._then);

  final _StepModel _self;
  final $Res Function(_StepModel) _then;

  /// Create a copy of StepModel
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
    return _then(_StepModel(
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

  /// Create a copy of StepModel
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
