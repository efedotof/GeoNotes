// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
