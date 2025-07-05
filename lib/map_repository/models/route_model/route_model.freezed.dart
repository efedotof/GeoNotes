// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteModel {
  @HiveField(0)
  String get code;
  @HiveField(1)
  List<RouteDop> get routes;
  @HiveField(2)
  List<Waypoint> get waypoints;
  @HiveField(3)
  String? get displayName;
  @HiveField(4)
  LocationModel? get location;

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouteModelCopyWith<RouteModel> get copyWith =>
      _$RouteModelCopyWithImpl<RouteModel>(this as RouteModel, _$identity);

  /// Serializes this RouteModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RouteModel &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.routes, routes) &&
            const DeepCollectionEquality().equals(other.waypoints, waypoints) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      const DeepCollectionEquality().hash(routes),
      const DeepCollectionEquality().hash(waypoints),
      displayName,
      location);

  @override
  String toString() {
    return 'RouteModel(code: $code, routes: $routes, waypoints: $waypoints, displayName: $displayName, location: $location)';
  }
}

/// @nodoc
abstract mixin class $RouteModelCopyWith<$Res> {
  factory $RouteModelCopyWith(
          RouteModel value, $Res Function(RouteModel) _then) =
      _$RouteModelCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) String code,
      @HiveField(1) List<RouteDop> routes,
      @HiveField(2) List<Waypoint> waypoints,
      @HiveField(3) String? displayName,
      @HiveField(4) LocationModel? location});

  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$RouteModelCopyWithImpl<$Res> implements $RouteModelCopyWith<$Res> {
  _$RouteModelCopyWithImpl(this._self, this._then);

  final RouteModel _self;
  final $Res Function(RouteModel) _then;

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? routes = null,
    Object? waypoints = null,
    Object? displayName = freezed,
    Object? location = freezed,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      routes: null == routes
          ? _self.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteDop>,
      waypoints: null == waypoints
          ? _self.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<Waypoint>,
      displayName: freezed == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ));
  }

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RouteModel].
extension RouteModelPatterns on RouteModel {
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
    TResult Function(_RouteModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RouteModel() when $default != null:
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
    TResult Function(_RouteModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouteModel():
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
    TResult? Function(_RouteModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouteModel() when $default != null:
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
            @HiveField(0) String code,
            @HiveField(1) List<RouteDop> routes,
            @HiveField(2) List<Waypoint> waypoints,
            @HiveField(3) String? displayName,
            @HiveField(4) LocationModel? location)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RouteModel() when $default != null:
        return $default(_that.code, _that.routes, _that.waypoints,
            _that.displayName, _that.location);
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
            @HiveField(0) String code,
            @HiveField(1) List<RouteDop> routes,
            @HiveField(2) List<Waypoint> waypoints,
            @HiveField(3) String? displayName,
            @HiveField(4) LocationModel? location)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouteModel():
        return $default(_that.code, _that.routes, _that.waypoints,
            _that.displayName, _that.location);
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
            @HiveField(0) String code,
            @HiveField(1) List<RouteDop> routes,
            @HiveField(2) List<Waypoint> waypoints,
            @HiveField(3) String? displayName,
            @HiveField(4) LocationModel? location)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouteModel() when $default != null:
        return $default(_that.code, _that.routes, _that.waypoints,
            _that.displayName, _that.location);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RouteModel implements RouteModel {
  const _RouteModel(
      {@HiveField(0) required this.code,
      @HiveField(1) required final List<RouteDop> routes,
      @HiveField(2) required final List<Waypoint> waypoints,
      @HiveField(3) required this.displayName,
      @HiveField(4) required this.location})
      : _routes = routes,
        _waypoints = waypoints;
  factory _RouteModel.fromJson(Map<String, dynamic> json) =>
      _$RouteModelFromJson(json);

  @override
  @HiveField(0)
  final String code;
  final List<RouteDop> _routes;
  @override
  @HiveField(1)
  List<RouteDop> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  final List<Waypoint> _waypoints;
  @override
  @HiveField(2)
  List<Waypoint> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  @override
  @HiveField(3)
  final String? displayName;
  @override
  @HiveField(4)
  final LocationModel? location;

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouteModelCopyWith<_RouteModel> get copyWith =>
      __$RouteModelCopyWithImpl<_RouteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RouteModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RouteModel &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      const DeepCollectionEquality().hash(_routes),
      const DeepCollectionEquality().hash(_waypoints),
      displayName,
      location);

  @override
  String toString() {
    return 'RouteModel(code: $code, routes: $routes, waypoints: $waypoints, displayName: $displayName, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$RouteModelCopyWith<$Res>
    implements $RouteModelCopyWith<$Res> {
  factory _$RouteModelCopyWith(
          _RouteModel value, $Res Function(_RouteModel) _then) =
      __$RouteModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String code,
      @HiveField(1) List<RouteDop> routes,
      @HiveField(2) List<Waypoint> waypoints,
      @HiveField(3) String? displayName,
      @HiveField(4) LocationModel? location});

  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$RouteModelCopyWithImpl<$Res> implements _$RouteModelCopyWith<$Res> {
  __$RouteModelCopyWithImpl(this._self, this._then);

  final _RouteModel _self;
  final $Res Function(_RouteModel) _then;

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? routes = null,
    Object? waypoints = null,
    Object? displayName = freezed,
    Object? location = freezed,
  }) {
    return _then(_RouteModel(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      routes: null == routes
          ? _self._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteDop>,
      waypoints: null == waypoints
          ? _self._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<Waypoint>,
      displayName: freezed == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ));
  }

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

// dart format on
