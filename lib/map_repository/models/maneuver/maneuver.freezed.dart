// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maneuver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Maneuver {
  List<double> get location;
  @JsonKey(name: 'bearing_after')
  int get bearingAfter;
  @JsonKey(name: 'bearing_before')
  int get bearingBefore;
  String get type;
  String get modifier;
  int? get exit;

  /// Create a copy of Maneuver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ManeuverCopyWith<Maneuver> get copyWith =>
      _$ManeuverCopyWithImpl<Maneuver>(this as Maneuver, _$identity);

  /// Serializes this Maneuver to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Maneuver &&
            const DeepCollectionEquality().equals(other.location, location) &&
            (identical(other.bearingAfter, bearingAfter) ||
                other.bearingAfter == bearingAfter) &&
            (identical(other.bearingBefore, bearingBefore) ||
                other.bearingBefore == bearingBefore) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.modifier, modifier) ||
                other.modifier == modifier) &&
            (identical(other.exit, exit) || other.exit == exit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      bearingAfter,
      bearingBefore,
      type,
      modifier,
      exit);

  @override
  String toString() {
    return 'Maneuver(location: $location, bearingAfter: $bearingAfter, bearingBefore: $bearingBefore, type: $type, modifier: $modifier, exit: $exit)';
  }
}

/// @nodoc
abstract mixin class $ManeuverCopyWith<$Res> {
  factory $ManeuverCopyWith(Maneuver value, $Res Function(Maneuver) _then) =
      _$ManeuverCopyWithImpl;
  @useResult
  $Res call(
      {List<double> location,
      @JsonKey(name: 'bearing_after') int bearingAfter,
      @JsonKey(name: 'bearing_before') int bearingBefore,
      String type,
      String modifier,
      int? exit});
}

/// @nodoc
class _$ManeuverCopyWithImpl<$Res> implements $ManeuverCopyWith<$Res> {
  _$ManeuverCopyWithImpl(this._self, this._then);

  final Maneuver _self;
  final $Res Function(Maneuver) _then;

  /// Create a copy of Maneuver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? bearingAfter = null,
    Object? bearingBefore = null,
    Object? type = null,
    Object? modifier = null,
    Object? exit = freezed,
  }) {
    return _then(_self.copyWith(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<double>,
      bearingAfter: null == bearingAfter
          ? _self.bearingAfter
          : bearingAfter // ignore: cast_nullable_to_non_nullable
              as int,
      bearingBefore: null == bearingBefore
          ? _self.bearingBefore
          : bearingBefore // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      modifier: null == modifier
          ? _self.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as String,
      exit: freezed == exit
          ? _self.exit
          : exit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Maneuver].
extension ManeuverPatterns on Maneuver {
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
    TResult Function(_Maneuver value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Maneuver() when $default != null:
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
    TResult Function(_Maneuver value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Maneuver():
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
    TResult? Function(_Maneuver value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Maneuver() when $default != null:
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
            List<double> location,
            @JsonKey(name: 'bearing_after') int bearingAfter,
            @JsonKey(name: 'bearing_before') int bearingBefore,
            String type,
            String modifier,
            int? exit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Maneuver() when $default != null:
        return $default(_that.location, _that.bearingAfter, _that.bearingBefore,
            _that.type, _that.modifier, _that.exit);
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
            List<double> location,
            @JsonKey(name: 'bearing_after') int bearingAfter,
            @JsonKey(name: 'bearing_before') int bearingBefore,
            String type,
            String modifier,
            int? exit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Maneuver():
        return $default(_that.location, _that.bearingAfter, _that.bearingBefore,
            _that.type, _that.modifier, _that.exit);
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
            List<double> location,
            @JsonKey(name: 'bearing_after') int bearingAfter,
            @JsonKey(name: 'bearing_before') int bearingBefore,
            String type,
            String modifier,
            int? exit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Maneuver() when $default != null:
        return $default(_that.location, _that.bearingAfter, _that.bearingBefore,
            _that.type, _that.modifier, _that.exit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Maneuver implements Maneuver {
  const _Maneuver(
      {required final List<double> location,
      @JsonKey(name: 'bearing_after') required this.bearingAfter,
      @JsonKey(name: 'bearing_before') required this.bearingBefore,
      required this.type,
      required this.modifier,
      this.exit})
      : _location = location;
  factory _Maneuver.fromJson(Map<String, dynamic> json) =>
      _$ManeuverFromJson(json);

  final List<double> _location;
  @override
  List<double> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  @JsonKey(name: 'bearing_after')
  final int bearingAfter;

  @override
  @JsonKey(name: 'bearing_before')
  final int bearingBefore;
  @override
  final String type;
  @override
  final String modifier;
  @override
  final int? exit;

  /// Create a copy of Maneuver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ManeuverCopyWith<_Maneuver> get copyWith =>
      __$ManeuverCopyWithImpl<_Maneuver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ManeuverToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Maneuver &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.bearingAfter, bearingAfter) ||
                other.bearingAfter == bearingAfter) &&
            (identical(other.bearingBefore, bearingBefore) ||
                other.bearingBefore == bearingBefore) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.modifier, modifier) ||
                other.modifier == modifier) &&
            (identical(other.exit, exit) || other.exit == exit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_location),
      bearingAfter,
      bearingBefore,
      type,
      modifier,
      exit);

  @override
  String toString() {
    return 'Maneuver(location: $location, bearingAfter: $bearingAfter, bearingBefore: $bearingBefore, type: $type, modifier: $modifier, exit: $exit)';
  }
}

/// @nodoc
abstract mixin class _$ManeuverCopyWith<$Res>
    implements $ManeuverCopyWith<$Res> {
  factory _$ManeuverCopyWith(_Maneuver value, $Res Function(_Maneuver) _then) =
      __$ManeuverCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<double> location,
      @JsonKey(name: 'bearing_after') int bearingAfter,
      @JsonKey(name: 'bearing_before') int bearingBefore,
      String type,
      String modifier,
      int? exit});
}

/// @nodoc
class __$ManeuverCopyWithImpl<$Res> implements _$ManeuverCopyWith<$Res> {
  __$ManeuverCopyWithImpl(this._self, this._then);

  final _Maneuver _self;
  final $Res Function(_Maneuver) _then;

  /// Create a copy of Maneuver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? location = null,
    Object? bearingAfter = null,
    Object? bearingBefore = null,
    Object? type = null,
    Object? modifier = null,
    Object? exit = freezed,
  }) {
    return _then(_Maneuver(
      location: null == location
          ? _self._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<double>,
      bearingAfter: null == bearingAfter
          ? _self.bearingAfter
          : bearingAfter // ignore: cast_nullable_to_non_nullable
              as int,
      bearingBefore: null == bearingBefore
          ? _self.bearingBefore
          : bearingBefore // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      modifier: null == modifier
          ? _self.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as String,
      exit: freezed == exit
          ? _self.exit
          : exit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
