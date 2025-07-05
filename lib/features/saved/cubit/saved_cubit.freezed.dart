// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'SavedState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SavedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavedState()';
  }
}

/// @nodoc
class $SavedStateCopyWith<$Res> {
  $SavedStateCopyWith(SavedState _, $Res Function(SavedState) __);
}

/// Adds pattern-matching-related methods to [SavedState].
extension SavedStatePatterns on SavedState {
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
    TResult Function(_SavedPlaces value)? savedPlaces,
    TResult Function(_SavedRoutes value)? savedRoutes,
    TResult Function(_SearchHistroy value)? searchHistory,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _SavedPlaces() when savedPlaces != null:
        return savedPlaces(_that);
      case _SavedRoutes() when savedRoutes != null:
        return savedRoutes(_that);
      case _SearchHistroy() when searchHistory != null:
        return searchHistory(_that);
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
    required TResult Function(_SavedPlaces value) savedPlaces,
    required TResult Function(_SavedRoutes value) savedRoutes,
    required TResult Function(_SearchHistroy value) searchHistory,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _SavedPlaces():
        return savedPlaces(_that);
      case _SavedRoutes():
        return savedRoutes(_that);
      case _SearchHistroy():
        return searchHistory(_that);
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
    TResult? Function(_SavedPlaces value)? savedPlaces,
    TResult? Function(_SavedRoutes value)? savedRoutes,
    TResult? Function(_SearchHistroy value)? searchHistory,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _SavedPlaces() when savedPlaces != null:
        return savedPlaces(_that);
      case _SavedRoutes() when savedRoutes != null:
        return savedRoutes(_that);
      case _SearchHistroy() when searchHistory != null:
        return searchHistory(_that);
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
    TResult Function(String title, String subtitle,
            ValueListenable<Box<dynamic>> listanable, Box box)?
        savedPlaces,
    TResult Function(String title, String subtitle,
            ValueListenable<Box<dynamic>> listanable, Box box)?
        savedRoutes,
    TResult Function(String title, String subtitle,
            ValueListenable<Box<dynamic>> listanable, Box box)?
        searchHistory,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _SavedPlaces() when savedPlaces != null:
        return savedPlaces(
            _that.title, _that.subtitle, _that.listanable, _that.box);
      case _SavedRoutes() when savedRoutes != null:
        return savedRoutes(
            _that.title, _that.subtitle, _that.listanable, _that.box);
      case _SearchHistroy() when searchHistory != null:
        return searchHistory(
            _that.title, _that.subtitle, _that.listanable, _that.box);
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
    required TResult Function(String title, String subtitle,
            ValueListenable<Box<dynamic>> listanable, Box box)
        savedPlaces,
    required TResult Function(String title, String subtitle,
            ValueListenable<Box<dynamic>> listanable, Box box)
        savedRoutes,
    required TResult Function(String title, String subtitle,
            ValueListenable<Box<dynamic>> listanable, Box box)
        searchHistory,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _SavedPlaces():
        return savedPlaces(
            _that.title, _that.subtitle, _that.listanable, _that.box);
      case _SavedRoutes():
        return savedRoutes(
            _that.title, _that.subtitle, _that.listanable, _that.box);
      case _SearchHistroy():
        return searchHistory(
            _that.title, _that.subtitle, _that.listanable, _that.box);
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
    TResult? Function(String title, String subtitle,
            ValueListenable<Box<dynamic>> listanable, Box box)?
        savedPlaces,
    TResult? Function(String title, String subtitle,
            ValueListenable<Box<dynamic>> listanable, Box box)?
        savedRoutes,
    TResult? Function(String title, String subtitle,
            ValueListenable<Box<dynamic>> listanable, Box box)?
        searchHistory,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _SavedPlaces() when savedPlaces != null:
        return savedPlaces(
            _that.title, _that.subtitle, _that.listanable, _that.box);
      case _SavedRoutes() when savedRoutes != null:
        return savedRoutes(
            _that.title, _that.subtitle, _that.listanable, _that.box);
      case _SearchHistroy() when searchHistory != null:
        return searchHistory(
            _that.title, _that.subtitle, _that.listanable, _that.box);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial with DiagnosticableTreeMixin implements SavedState {
  const _Initial();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'SavedState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavedState.initial()';
  }
}

/// @nodoc

class _SavedPlaces with DiagnosticableTreeMixin implements SavedState {
  const _SavedPlaces(
      {required this.title,
      required this.subtitle,
      required this.listanable,
      required this.box});

  final String title;
  final String subtitle;
  final ValueListenable<Box<dynamic>> listanable;
  final Box box;

  /// Create a copy of SavedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SavedPlacesCopyWith<_SavedPlaces> get copyWith =>
      __$SavedPlacesCopyWithImpl<_SavedPlaces>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SavedState.savedPlaces'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('listanable', listanable))
      ..add(DiagnosticsProperty('box', box));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedPlaces &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.listanable, listanable) ||
                other.listanable == listanable) &&
            (identical(other.box, box) || other.box == box));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, subtitle, listanable, box);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavedState.savedPlaces(title: $title, subtitle: $subtitle, listanable: $listanable, box: $box)';
  }
}

/// @nodoc
abstract mixin class _$SavedPlacesCopyWith<$Res>
    implements $SavedStateCopyWith<$Res> {
  factory _$SavedPlacesCopyWith(
          _SavedPlaces value, $Res Function(_SavedPlaces) _then) =
      __$SavedPlacesCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String subtitle,
      ValueListenable<Box<dynamic>> listanable,
      Box box});
}

/// @nodoc
class __$SavedPlacesCopyWithImpl<$Res> implements _$SavedPlacesCopyWith<$Res> {
  __$SavedPlacesCopyWithImpl(this._self, this._then);

  final _SavedPlaces _self;
  final $Res Function(_SavedPlaces) _then;

  /// Create a copy of SavedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? listanable = null,
    Object? box = null,
  }) {
    return _then(_SavedPlaces(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      listanable: null == listanable
          ? _self.listanable
          : listanable // ignore: cast_nullable_to_non_nullable
              as ValueListenable<Box<dynamic>>,
      box: null == box
          ? _self.box
          : box // ignore: cast_nullable_to_non_nullable
              as Box,
    ));
  }
}

/// @nodoc

class _SavedRoutes with DiagnosticableTreeMixin implements SavedState {
  const _SavedRoutes(
      {required this.title,
      required this.subtitle,
      required this.listanable,
      required this.box});

  final String title;
  final String subtitle;
  final ValueListenable<Box<dynamic>> listanable;
  final Box box;

  /// Create a copy of SavedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SavedRoutesCopyWith<_SavedRoutes> get copyWith =>
      __$SavedRoutesCopyWithImpl<_SavedRoutes>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SavedState.savedRoutes'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('listanable', listanable))
      ..add(DiagnosticsProperty('box', box));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedRoutes &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.listanable, listanable) ||
                other.listanable == listanable) &&
            (identical(other.box, box) || other.box == box));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, subtitle, listanable, box);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavedState.savedRoutes(title: $title, subtitle: $subtitle, listanable: $listanable, box: $box)';
  }
}

/// @nodoc
abstract mixin class _$SavedRoutesCopyWith<$Res>
    implements $SavedStateCopyWith<$Res> {
  factory _$SavedRoutesCopyWith(
          _SavedRoutes value, $Res Function(_SavedRoutes) _then) =
      __$SavedRoutesCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String subtitle,
      ValueListenable<Box<dynamic>> listanable,
      Box box});
}

/// @nodoc
class __$SavedRoutesCopyWithImpl<$Res> implements _$SavedRoutesCopyWith<$Res> {
  __$SavedRoutesCopyWithImpl(this._self, this._then);

  final _SavedRoutes _self;
  final $Res Function(_SavedRoutes) _then;

  /// Create a copy of SavedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? listanable = null,
    Object? box = null,
  }) {
    return _then(_SavedRoutes(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      listanable: null == listanable
          ? _self.listanable
          : listanable // ignore: cast_nullable_to_non_nullable
              as ValueListenable<Box<dynamic>>,
      box: null == box
          ? _self.box
          : box // ignore: cast_nullable_to_non_nullable
              as Box,
    ));
  }
}

/// @nodoc

class _SearchHistroy with DiagnosticableTreeMixin implements SavedState {
  const _SearchHistroy(
      {required this.title,
      required this.subtitle,
      required this.listanable,
      required this.box});

  final String title;
  final String subtitle;
  final ValueListenable<Box<dynamic>> listanable;
  final Box box;

  /// Create a copy of SavedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchHistroyCopyWith<_SearchHistroy> get copyWith =>
      __$SearchHistroyCopyWithImpl<_SearchHistroy>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SavedState.searchHistory'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('listanable', listanable))
      ..add(DiagnosticsProperty('box', box));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchHistroy &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.listanable, listanable) ||
                other.listanable == listanable) &&
            (identical(other.box, box) || other.box == box));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, subtitle, listanable, box);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavedState.searchHistory(title: $title, subtitle: $subtitle, listanable: $listanable, box: $box)';
  }
}

/// @nodoc
abstract mixin class _$SearchHistroyCopyWith<$Res>
    implements $SavedStateCopyWith<$Res> {
  factory _$SearchHistroyCopyWith(
          _SearchHistroy value, $Res Function(_SearchHistroy) _then) =
      __$SearchHistroyCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String subtitle,
      ValueListenable<Box<dynamic>> listanable,
      Box box});
}

/// @nodoc
class __$SearchHistroyCopyWithImpl<$Res>
    implements _$SearchHistroyCopyWith<$Res> {
  __$SearchHistroyCopyWithImpl(this._self, this._then);

  final _SearchHistroy _self;
  final $Res Function(_SearchHistroy) _then;

  /// Create a copy of SavedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? listanable = null,
    Object? box = null,
  }) {
    return _then(_SearchHistroy(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      listanable: null == listanable
          ? _self.listanable
          : listanable // ignore: cast_nullable_to_non_nullable
              as ValueListenable<Box<dynamic>>,
      box: null == box
          ? _self.box
          : box // ignore: cast_nullable_to_non_nullable
              as Box,
    ));
  }
}

// dart format on
