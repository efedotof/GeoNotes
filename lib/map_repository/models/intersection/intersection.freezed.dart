// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intersection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Intersection {
  List<double> get location;
  List<int> get bearings;
  List<bool> get entry;
  int? get out;
  int? get in_;

  /// Create a copy of Intersection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntersectionCopyWith<Intersection> get copyWith =>
      _$IntersectionCopyWithImpl<Intersection>(
          this as Intersection, _$identity);

  /// Serializes this Intersection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Intersection &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.bearings, bearings) &&
            const DeepCollectionEquality().equals(other.entry, entry) &&
            (identical(other.out, out) || other.out == out) &&
            (identical(other.in_, in_) || other.in_ == in_));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(bearings),
      const DeepCollectionEquality().hash(entry),
      out,
      in_);

  @override
  String toString() {
    return 'Intersection(location: $location, bearings: $bearings, entry: $entry, out: $out, in_: $in_)';
  }
}

/// @nodoc
abstract mixin class $IntersectionCopyWith<$Res> {
  factory $IntersectionCopyWith(
          Intersection value, $Res Function(Intersection) _then) =
      _$IntersectionCopyWithImpl;
  @useResult
  $Res call(
      {List<double> location,
      List<int> bearings,
      List<bool> entry,
      int? out,
      int? in_});
}

/// @nodoc
class _$IntersectionCopyWithImpl<$Res> implements $IntersectionCopyWith<$Res> {
  _$IntersectionCopyWithImpl(this._self, this._then);

  final Intersection _self;
  final $Res Function(Intersection) _then;

  /// Create a copy of Intersection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? bearings = null,
    Object? entry = null,
    Object? out = freezed,
    Object? in_ = freezed,
  }) {
    return _then(_self.copyWith(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<double>,
      bearings: null == bearings
          ? _self.bearings
          : bearings // ignore: cast_nullable_to_non_nullable
              as List<int>,
      entry: null == entry
          ? _self.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      out: freezed == out
          ? _self.out
          : out // ignore: cast_nullable_to_non_nullable
              as int?,
      in_: freezed == in_
          ? _self.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Intersection].
extension IntersectionPatterns on Intersection {
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
    TResult Function(_Intersection value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Intersection() when $default != null:
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
    TResult Function(_Intersection value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Intersection():
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
    TResult? Function(_Intersection value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Intersection() when $default != null:
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
    TResult Function(List<double> location, List<int> bearings,
            List<bool> entry, int? out, int? in_)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Intersection() when $default != null:
        return $default(
            _that.location, _that.bearings, _that.entry, _that.out, _that.in_);
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
    TResult Function(List<double> location, List<int> bearings,
            List<bool> entry, int? out, int? in_)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Intersection():
        return $default(
            _that.location, _that.bearings, _that.entry, _that.out, _that.in_);
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
    TResult? Function(List<double> location, List<int> bearings,
            List<bool> entry, int? out, int? in_)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Intersection() when $default != null:
        return $default(
            _that.location, _that.bearings, _that.entry, _that.out, _that.in_);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Intersection implements Intersection {
  const _Intersection(
      {required final List<double> location,
      required final List<int> bearings,
      required final List<bool> entry,
      this.out,
      this.in_})
      : _location = location,
        _bearings = bearings,
        _entry = entry;
  factory _Intersection.fromJson(Map<String, dynamic> json) =>
      _$IntersectionFromJson(json);

  final List<double> _location;
  @override
  List<double> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  final List<int> _bearings;
  @override
  List<int> get bearings {
    if (_bearings is EqualUnmodifiableListView) return _bearings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bearings);
  }

  final List<bool> _entry;
  @override
  List<bool> get entry {
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entry);
  }

  @override
  final int? out;
  @override
  final int? in_;

  /// Create a copy of Intersection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntersectionCopyWith<_Intersection> get copyWith =>
      __$IntersectionCopyWithImpl<_Intersection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntersectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Intersection &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            const DeepCollectionEquality().equals(other._bearings, _bearings) &&
            const DeepCollectionEquality().equals(other._entry, _entry) &&
            (identical(other.out, out) || other.out == out) &&
            (identical(other.in_, in_) || other.in_ == in_));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_location),
      const DeepCollectionEquality().hash(_bearings),
      const DeepCollectionEquality().hash(_entry),
      out,
      in_);

  @override
  String toString() {
    return 'Intersection(location: $location, bearings: $bearings, entry: $entry, out: $out, in_: $in_)';
  }
}

/// @nodoc
abstract mixin class _$IntersectionCopyWith<$Res>
    implements $IntersectionCopyWith<$Res> {
  factory _$IntersectionCopyWith(
          _Intersection value, $Res Function(_Intersection) _then) =
      __$IntersectionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<double> location,
      List<int> bearings,
      List<bool> entry,
      int? out,
      int? in_});
}

/// @nodoc
class __$IntersectionCopyWithImpl<$Res>
    implements _$IntersectionCopyWith<$Res> {
  __$IntersectionCopyWithImpl(this._self, this._then);

  final _Intersection _self;
  final $Res Function(_Intersection) _then;

  /// Create a copy of Intersection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? location = null,
    Object? bearings = null,
    Object? entry = null,
    Object? out = freezed,
    Object? in_ = freezed,
  }) {
    return _then(_Intersection(
      location: null == location
          ? _self._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<double>,
      bearings: null == bearings
          ? _self._bearings
          : bearings // ignore: cast_nullable_to_non_nullable
              as List<int>,
      entry: null == entry
          ? _self._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      out: freezed == out
          ? _self.out
          : out // ignore: cast_nullable_to_non_nullable
              as int?,
      in_: freezed == in_
          ? _self.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
