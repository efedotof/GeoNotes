// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_marker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateMarkerState {
  String get title;
  String get description;
  List<File> get images;
  String? get errorMessage;
  bool get success;

  /// Create a copy of CreateMarkerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateMarkerStateCopyWith<CreateMarkerState> get copyWith =>
      _$CreateMarkerStateCopyWithImpl<CreateMarkerState>(
          this as CreateMarkerState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateMarkerState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(images), errorMessage, success);

  @override
  String toString() {
    return 'CreateMarkerState(title: $title, description: $description, images: $images, errorMessage: $errorMessage, success: $success)';
  }
}

/// @nodoc
abstract mixin class $CreateMarkerStateCopyWith<$Res> {
  factory $CreateMarkerStateCopyWith(
          CreateMarkerState value, $Res Function(CreateMarkerState) _then) =
      _$CreateMarkerStateCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String description,
      List<File> images,
      String? errorMessage,
      bool success});
}

/// @nodoc
class _$CreateMarkerStateCopyWithImpl<$Res>
    implements $CreateMarkerStateCopyWith<$Res> {
  _$CreateMarkerStateCopyWithImpl(this._self, this._then);

  final CreateMarkerState _self;
  final $Res Function(CreateMarkerState) _then;

  /// Create a copy of CreateMarkerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? errorMessage = freezed,
    Object? success = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateMarkerState].
extension CreateMarkerStatePatterns on CreateMarkerState {
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
    TResult Function(_CreateMarkerState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateMarkerState() when $default != null:
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
    TResult Function(_CreateMarkerState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateMarkerState():
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
    TResult? Function(_CreateMarkerState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateMarkerState() when $default != null:
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
    TResult Function(String title, String description, List<File> images,
            String? errorMessage, bool success)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateMarkerState() when $default != null:
        return $default(_that.title, _that.description, _that.images,
            _that.errorMessage, _that.success);
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
    TResult Function(String title, String description, List<File> images,
            String? errorMessage, bool success)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateMarkerState():
        return $default(_that.title, _that.description, _that.images,
            _that.errorMessage, _that.success);
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
    TResult? Function(String title, String description, List<File> images,
            String? errorMessage, bool success)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateMarkerState() when $default != null:
        return $default(_that.title, _that.description, _that.images,
            _that.errorMessage, _that.success);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CreateMarkerState implements CreateMarkerState {
  const _CreateMarkerState(
      {required this.title,
      required this.description,
      required final List<File> images,
      required this.errorMessage,
      required this.success})
      : _images = images;

  @override
  final String title;
  @override
  final String description;
  final List<File> _images;
  @override
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? errorMessage;
  @override
  final bool success;

  /// Create a copy of CreateMarkerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateMarkerStateCopyWith<_CreateMarkerState> get copyWith =>
      __$CreateMarkerStateCopyWithImpl<_CreateMarkerState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateMarkerState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(_images), errorMessage, success);

  @override
  String toString() {
    return 'CreateMarkerState(title: $title, description: $description, images: $images, errorMessage: $errorMessage, success: $success)';
  }
}

/// @nodoc
abstract mixin class _$CreateMarkerStateCopyWith<$Res>
    implements $CreateMarkerStateCopyWith<$Res> {
  factory _$CreateMarkerStateCopyWith(
          _CreateMarkerState value, $Res Function(_CreateMarkerState) _then) =
      __$CreateMarkerStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      List<File> images,
      String? errorMessage,
      bool success});
}

/// @nodoc
class __$CreateMarkerStateCopyWithImpl<$Res>
    implements _$CreateMarkerStateCopyWith<$Res> {
  __$CreateMarkerStateCopyWithImpl(this._self, this._then);

  final _CreateMarkerState _self;
  final $Res Function(_CreateMarkerState) _then;

  /// Create a copy of CreateMarkerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? errorMessage = freezed,
    Object? success = null,
  }) {
    return _then(_CreateMarkerState(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
