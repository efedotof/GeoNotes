// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarkerState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MarkerState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MarkerState()';
  }
}

/// @nodoc
class $MarkerStateCopyWith<$Res> {
  $MarkerStateCopyWith(MarkerState _, $Res Function(MarkerState) __);
}

/// Adds pattern-matching-related methods to [MarkerState].
extension MarkerStatePatterns on MarkerState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MarkerRotationUpdated value)? markerRotationUpdated,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _MarkerRotationUpdated() when markerRotationUpdated != null:
        return markerRotationUpdated(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MarkerRotationUpdated value)
        markerRotationUpdated,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _MarkerRotationUpdated():
        return markerRotationUpdated(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MarkerRotationUpdated value)? markerRotationUpdated,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _MarkerRotationUpdated() when markerRotationUpdated != null:
        return markerRotationUpdated(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double heading)? markerRotationUpdated,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _MarkerRotationUpdated() when markerRotationUpdated != null:
        return markerRotationUpdated(_that.heading);
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double heading) markerRotationUpdated,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _MarkerRotationUpdated():
        return markerRotationUpdated(_that.heading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double heading)? markerRotationUpdated,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _MarkerRotationUpdated() when markerRotationUpdated != null:
        return markerRotationUpdated(_that.heading);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements MarkerState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MarkerState.initial()';
  }
}

/// @nodoc

class _MarkerRotationUpdated implements MarkerState {
  const _MarkerRotationUpdated(this.heading);

  final double heading;

  /// Create a copy of MarkerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MarkerRotationUpdatedCopyWith<_MarkerRotationUpdated> get copyWith =>
      __$MarkerRotationUpdatedCopyWithImpl<_MarkerRotationUpdated>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkerRotationUpdated &&
            (identical(other.heading, heading) || other.heading == heading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, heading);

  @override
  String toString() {
    return 'MarkerState.markerRotationUpdated(heading: $heading)';
  }
}

/// @nodoc
abstract mixin class _$MarkerRotationUpdatedCopyWith<$Res>
    implements $MarkerStateCopyWith<$Res> {
  factory _$MarkerRotationUpdatedCopyWith(_MarkerRotationUpdated value,
          $Res Function(_MarkerRotationUpdated) _then) =
      __$MarkerRotationUpdatedCopyWithImpl;
  @useResult
  $Res call({double heading});
}

/// @nodoc
class __$MarkerRotationUpdatedCopyWithImpl<$Res>
    implements _$MarkerRotationUpdatedCopyWith<$Res> {
  __$MarkerRotationUpdatedCopyWithImpl(this._self, this._then);

  final _MarkerRotationUpdated _self;
  final $Res Function(_MarkerRotationUpdated) _then;

  /// Create a copy of MarkerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? heading = null,
  }) {
    return _then(_MarkerRotationUpdated(
      null == heading
          ? _self.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
