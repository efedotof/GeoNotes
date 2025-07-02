// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searche_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearcheState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearcheState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearcheState()';
  }
}

/// @nodoc
class $SearcheStateCopyWith<$Res> {
  $SearcheStateCopyWith(SearcheState _, $Res Function(SearcheState) __);
}

/// @nodoc

class _Initial implements SearcheState {
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
    return 'SearcheState.initial()';
  }
}

/// @nodoc

class _SearcheLoading implements SearcheState {
  const _SearcheLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearcheLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearcheState.searcheLoading()';
  }
}

/// @nodoc

class _SearcheSuccess implements SearcheState {
  const _SearcheSuccess({required final List<Location> locations})
      : _locations = locations;

  final List<Location> _locations;
  List<Location> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  /// Create a copy of SearcheState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearcheSuccessCopyWith<_SearcheSuccess> get copyWith =>
      __$SearcheSuccessCopyWithImpl<_SearcheSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearcheSuccess &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_locations));

  @override
  String toString() {
    return 'SearcheState.searcheSuccess(locations: $locations)';
  }
}

/// @nodoc
abstract mixin class _$SearcheSuccessCopyWith<$Res>
    implements $SearcheStateCopyWith<$Res> {
  factory _$SearcheSuccessCopyWith(
          _SearcheSuccess value, $Res Function(_SearcheSuccess) _then) =
      __$SearcheSuccessCopyWithImpl;
  @useResult
  $Res call({List<Location> locations});
}

/// @nodoc
class __$SearcheSuccessCopyWithImpl<$Res>
    implements _$SearcheSuccessCopyWith<$Res> {
  __$SearcheSuccessCopyWithImpl(this._self, this._then);

  final _SearcheSuccess _self;
  final $Res Function(_SearcheSuccess) _then;

  /// Create a copy of SearcheState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? locations = null,
  }) {
    return _then(_SearcheSuccess(
      locations: null == locations
          ? _self._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
    ));
  }
}

/// @nodoc

class _SearcheError implements SearcheState {
  const _SearcheError(this.message);

  final String message;

  /// Create a copy of SearcheState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearcheErrorCopyWith<_SearcheError> get copyWith =>
      __$SearcheErrorCopyWithImpl<_SearcheError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearcheError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SearcheState.searcheError(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SearcheErrorCopyWith<$Res>
    implements $SearcheStateCopyWith<$Res> {
  factory _$SearcheErrorCopyWith(
          _SearcheError value, $Res Function(_SearcheError) _then) =
      __$SearcheErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$SearcheErrorCopyWithImpl<$Res>
    implements _$SearcheErrorCopyWith<$Res> {
  __$SearcheErrorCopyWithImpl(this._self, this._then);

  final _SearcheError _self;
  final $Res Function(_SearcheError) _then;

  /// Create a copy of SearcheState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_SearcheError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
