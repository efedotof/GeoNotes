// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waypoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Waypoint {
  String get hint;
  List<double> get location;
  String get name;
  double get distance;

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WaypointCopyWith<Waypoint> get copyWith =>
      _$WaypointCopyWithImpl<Waypoint>(this as Waypoint, _$identity);

  /// Serializes this Waypoint to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Waypoint &&
            (identical(other.hint, hint) || other.hint == hint) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hint,
      const DeepCollectionEquality().hash(location), name, distance);

  @override
  String toString() {
    return 'Waypoint(hint: $hint, location: $location, name: $name, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class $WaypointCopyWith<$Res> {
  factory $WaypointCopyWith(Waypoint value, $Res Function(Waypoint) _then) =
      _$WaypointCopyWithImpl;
  @useResult
  $Res call({String hint, List<double> location, String name, double distance});
}

/// @nodoc
class _$WaypointCopyWithImpl<$Res> implements $WaypointCopyWith<$Res> {
  _$WaypointCopyWithImpl(this._self, this._then);

  final Waypoint _self;
  final $Res Function(Waypoint) _then;

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = null,
    Object? location = null,
    Object? name = null,
    Object? distance = null,
  }) {
    return _then(_self.copyWith(
      hint: null == hint
          ? _self.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<double>,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [Waypoint].
extension WaypointPatterns on Waypoint {
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
    TResult Function(_Waypoint value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Waypoint() when $default != null:
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
    TResult Function(_Waypoint value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Waypoint():
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
    TResult? Function(_Waypoint value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Waypoint() when $default != null:
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
            String hint, List<double> location, String name, double distance)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Waypoint() when $default != null:
        return $default(_that.hint, _that.location, _that.name, _that.distance);
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
            String hint, List<double> location, String name, double distance)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Waypoint():
        return $default(_that.hint, _that.location, _that.name, _that.distance);
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
            String hint, List<double> location, String name, double distance)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Waypoint() when $default != null:
        return $default(_that.hint, _that.location, _that.name, _that.distance);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Waypoint implements Waypoint {
  const _Waypoint(
      {required this.hint,
      required final List<double> location,
      required this.name,
      required this.distance})
      : _location = location;
  factory _Waypoint.fromJson(Map<String, dynamic> json) =>
      _$WaypointFromJson(json);

  @override
  final String hint;
  final List<double> _location;
  @override
  List<double> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  final String name;
  @override
  final double distance;

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WaypointCopyWith<_Waypoint> get copyWith =>
      __$WaypointCopyWithImpl<_Waypoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WaypointToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Waypoint &&
            (identical(other.hint, hint) || other.hint == hint) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hint,
      const DeepCollectionEquality().hash(_location), name, distance);

  @override
  String toString() {
    return 'Waypoint(hint: $hint, location: $location, name: $name, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class _$WaypointCopyWith<$Res>
    implements $WaypointCopyWith<$Res> {
  factory _$WaypointCopyWith(_Waypoint value, $Res Function(_Waypoint) _then) =
      __$WaypointCopyWithImpl;
  @override
  @useResult
  $Res call({String hint, List<double> location, String name, double distance});
}

/// @nodoc
class __$WaypointCopyWithImpl<$Res> implements _$WaypointCopyWith<$Res> {
  __$WaypointCopyWithImpl(this._self, this._then);

  final _Waypoint _self;
  final $Res Function(_Waypoint) _then;

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hint = null,
    Object? location = null,
    Object? name = null,
    Object? distance = null,
  }) {
    return _then(_Waypoint(
      hint: null == hint
          ? _self.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<double>,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
