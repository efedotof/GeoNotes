// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SelectedItemState {
  CityModel? get startRoute;
  CityModel? get endRoute;

  /// Create a copy of SelectedItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectedItemStateCopyWith<SelectedItemState> get copyWith =>
      _$SelectedItemStateCopyWithImpl<SelectedItemState>(
          this as SelectedItemState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectedItemState &&
            (identical(other.startRoute, startRoute) ||
                other.startRoute == startRoute) &&
            (identical(other.endRoute, endRoute) ||
                other.endRoute == endRoute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startRoute, endRoute);

  @override
  String toString() {
    return 'SelectedItemState(startRoute: $startRoute, endRoute: $endRoute)';
  }
}

/// @nodoc
abstract mixin class $SelectedItemStateCopyWith<$Res> {
  factory $SelectedItemStateCopyWith(
          SelectedItemState value, $Res Function(SelectedItemState) _then) =
      _$SelectedItemStateCopyWithImpl;
  @useResult
  $Res call({CityModel? startRoute, CityModel? endRoute});

  $CityModelCopyWith<$Res>? get startRoute;
  $CityModelCopyWith<$Res>? get endRoute;
}

/// @nodoc
class _$SelectedItemStateCopyWithImpl<$Res>
    implements $SelectedItemStateCopyWith<$Res> {
  _$SelectedItemStateCopyWithImpl(this._self, this._then);

  final SelectedItemState _self;
  final $Res Function(SelectedItemState) _then;

  /// Create a copy of SelectedItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startRoute = freezed,
    Object? endRoute = freezed,
  }) {
    return _then(_self.copyWith(
      startRoute: freezed == startRoute
          ? _self.startRoute
          : startRoute // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      endRoute: freezed == endRoute
          ? _self.endRoute
          : endRoute // ignore: cast_nullable_to_non_nullable
              as CityModel?,
    ));
  }

  /// Create a copy of SelectedItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get startRoute {
    if (_self.startRoute == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_self.startRoute!, (value) {
      return _then(_self.copyWith(startRoute: value));
    });
  }

  /// Create a copy of SelectedItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get endRoute {
    if (_self.endRoute == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_self.endRoute!, (value) {
      return _then(_self.copyWith(endRoute: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SelectedItemState].
extension SelectedItemStatePatterns on SelectedItemState {
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
    TResult Function(_SelectedItemState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectedItemState() when $default != null:
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
    TResult Function(_SelectedItemState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectedItemState():
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
    TResult? Function(_SelectedItemState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectedItemState() when $default != null:
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
    TResult Function(CityModel? startRoute, CityModel? endRoute)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectedItemState() when $default != null:
        return $default(_that.startRoute, _that.endRoute);
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
    TResult Function(CityModel? startRoute, CityModel? endRoute) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectedItemState():
        return $default(_that.startRoute, _that.endRoute);
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
    TResult? Function(CityModel? startRoute, CityModel? endRoute)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectedItemState() when $default != null:
        return $default(_that.startRoute, _that.endRoute);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SelectedItemState implements SelectedItemState {
  const _SelectedItemState({this.startRoute, this.endRoute});

  @override
  final CityModel? startRoute;
  @override
  final CityModel? endRoute;

  /// Create a copy of SelectedItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectedItemStateCopyWith<_SelectedItemState> get copyWith =>
      __$SelectedItemStateCopyWithImpl<_SelectedItemState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectedItemState &&
            (identical(other.startRoute, startRoute) ||
                other.startRoute == startRoute) &&
            (identical(other.endRoute, endRoute) ||
                other.endRoute == endRoute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startRoute, endRoute);

  @override
  String toString() {
    return 'SelectedItemState(startRoute: $startRoute, endRoute: $endRoute)';
  }
}

/// @nodoc
abstract mixin class _$SelectedItemStateCopyWith<$Res>
    implements $SelectedItemStateCopyWith<$Res> {
  factory _$SelectedItemStateCopyWith(
          _SelectedItemState value, $Res Function(_SelectedItemState) _then) =
      __$SelectedItemStateCopyWithImpl;
  @override
  @useResult
  $Res call({CityModel? startRoute, CityModel? endRoute});

  @override
  $CityModelCopyWith<$Res>? get startRoute;
  @override
  $CityModelCopyWith<$Res>? get endRoute;
}

/// @nodoc
class __$SelectedItemStateCopyWithImpl<$Res>
    implements _$SelectedItemStateCopyWith<$Res> {
  __$SelectedItemStateCopyWithImpl(this._self, this._then);

  final _SelectedItemState _self;
  final $Res Function(_SelectedItemState) _then;

  /// Create a copy of SelectedItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startRoute = freezed,
    Object? endRoute = freezed,
  }) {
    return _then(_SelectedItemState(
      startRoute: freezed == startRoute
          ? _self.startRoute
          : startRoute // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      endRoute: freezed == endRoute
          ? _self.endRoute
          : endRoute // ignore: cast_nullable_to_non_nullable
              as CityModel?,
    ));
  }

  /// Create a copy of SelectedItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get startRoute {
    if (_self.startRoute == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_self.startRoute!, (value) {
      return _then(_self.copyWith(startRoute: value));
    });
  }

  /// Create a copy of SelectedItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get endRoute {
    if (_self.endRoute == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_self.endRoute!, (value) {
      return _then(_self.copyWith(endRoute: value));
    });
  }
}

// dart format on
