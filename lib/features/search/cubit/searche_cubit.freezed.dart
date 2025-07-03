// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [SearcheState].
extension SearcheStatePatterns on SearcheState {
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
    TResult Function(_SearcheLoading value)? searcheLoading,
    TResult Function(_SearcheSuccess value)? searcheSuccess,
    TResult Function(_SearcheError value)? searcheError,
    TResult Function(_SearcheEmpty value)? searcheEmpty,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _SearcheLoading() when searcheLoading != null:
        return searcheLoading(_that);
      case _SearcheSuccess() when searcheSuccess != null:
        return searcheSuccess(_that);
      case _SearcheError() when searcheError != null:
        return searcheError(_that);
      case _SearcheEmpty() when searcheEmpty != null:
        return searcheEmpty(_that);
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
    required TResult Function(_SearcheLoading value) searcheLoading,
    required TResult Function(_SearcheSuccess value) searcheSuccess,
    required TResult Function(_SearcheError value) searcheError,
    required TResult Function(_SearcheEmpty value) searcheEmpty,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _SearcheLoading():
        return searcheLoading(_that);
      case _SearcheSuccess():
        return searcheSuccess(_that);
      case _SearcheError():
        return searcheError(_that);
      case _SearcheEmpty():
        return searcheEmpty(_that);
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
    TResult? Function(_SearcheLoading value)? searcheLoading,
    TResult? Function(_SearcheSuccess value)? searcheSuccess,
    TResult? Function(_SearcheError value)? searcheError,
    TResult? Function(_SearcheEmpty value)? searcheEmpty,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _SearcheLoading() when searcheLoading != null:
        return searcheLoading(_that);
      case _SearcheSuccess() when searcheSuccess != null:
        return searcheSuccess(_that);
      case _SearcheError() when searcheError != null:
        return searcheError(_that);
      case _SearcheEmpty() when searcheEmpty != null:
        return searcheEmpty(_that);
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
    TResult Function()? searcheLoading,
    TResult Function(List<LocationModel> locations)? searcheSuccess,
    TResult Function(String message)? searcheError,
    TResult Function(String text)? searcheEmpty,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _SearcheLoading() when searcheLoading != null:
        return searcheLoading();
      case _SearcheSuccess() when searcheSuccess != null:
        return searcheSuccess(_that.locations);
      case _SearcheError() when searcheError != null:
        return searcheError(_that.message);
      case _SearcheEmpty() when searcheEmpty != null:
        return searcheEmpty(_that.text);
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
    required TResult Function() searcheLoading,
    required TResult Function(List<LocationModel> locations) searcheSuccess,
    required TResult Function(String message) searcheError,
    required TResult Function(String text) searcheEmpty,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _SearcheLoading():
        return searcheLoading();
      case _SearcheSuccess():
        return searcheSuccess(_that.locations);
      case _SearcheError():
        return searcheError(_that.message);
      case _SearcheEmpty():
        return searcheEmpty(_that.text);
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
    TResult? Function()? searcheLoading,
    TResult? Function(List<LocationModel> locations)? searcheSuccess,
    TResult? Function(String message)? searcheError,
    TResult? Function(String text)? searcheEmpty,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _SearcheLoading() when searcheLoading != null:
        return searcheLoading();
      case _SearcheSuccess() when searcheSuccess != null:
        return searcheSuccess(_that.locations);
      case _SearcheError() when searcheError != null:
        return searcheError(_that.message);
      case _SearcheEmpty() when searcheEmpty != null:
        return searcheEmpty(_that.text);
      case _:
        return null;
    }
  }
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
  const _SearcheSuccess({required final List<LocationModel> locations})
      : _locations = locations;

  final List<LocationModel> _locations;
  List<LocationModel> get locations {
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
  $Res call({List<LocationModel> locations});
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
              as List<LocationModel>,
    ));
  }
}

/// @nodoc

class _SearcheError implements SearcheState {
  const _SearcheError({required this.message});

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
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SearcheEmpty implements SearcheState {
  const _SearcheEmpty({required this.text});

  final String text;

  /// Create a copy of SearcheState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearcheEmptyCopyWith<_SearcheEmpty> get copyWith =>
      __$SearcheEmptyCopyWithImpl<_SearcheEmpty>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearcheEmpty &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  String toString() {
    return 'SearcheState.searcheEmpty(text: $text)';
  }
}

/// @nodoc
abstract mixin class _$SearcheEmptyCopyWith<$Res>
    implements $SearcheStateCopyWith<$Res> {
  factory _$SearcheEmptyCopyWith(
          _SearcheEmpty value, $Res Function(_SearcheEmpty) _then) =
      __$SearcheEmptyCopyWithImpl;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$SearcheEmptyCopyWithImpl<$Res>
    implements _$SearcheEmptyCopyWith<$Res> {
  __$SearcheEmptyCopyWithImpl(this._self, this._then);

  final _SearcheEmpty _self;
  final $Res Function(_SearcheEmpty) _then;

  /// Create a copy of SearcheState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
  }) {
    return _then(_SearcheEmpty(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
