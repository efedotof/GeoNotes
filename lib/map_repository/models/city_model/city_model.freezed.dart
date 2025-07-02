// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityModel {
  String get name;
  double get idx;
  double get idy;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<CityModel> get copyWith =>
      _$CityModelCopyWithImpl<CityModel>(this as CityModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CityModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.idy, idy) || other.idy == idy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, idx, idy);

  @override
  String toString() {
    return 'CityModel(name: $name, idx: $idx, idy: $idy)';
  }
}

/// @nodoc
abstract mixin class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) _then) =
      _$CityModelCopyWithImpl;
  @useResult
  $Res call({String name, double idx, double idy});
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res> implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._self, this._then);

  final CityModel _self;
  final $Res Function(CityModel) _then;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? idx = null,
    Object? idy = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      idx: null == idx
          ? _self.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as double,
      idy: null == idy
          ? _self.idy
          : idy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _CityModel implements CityModel {
  const _CityModel({required this.name, required this.idx, required this.idy});

  @override
  final String name;
  @override
  final double idx;
  @override
  final double idy;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CityModelCopyWith<_CityModel> get copyWith =>
      __$CityModelCopyWithImpl<_CityModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CityModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.idy, idy) || other.idy == idy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, idx, idy);

  @override
  String toString() {
    return 'CityModel(name: $name, idx: $idx, idy: $idy)';
  }
}

/// @nodoc
abstract mixin class _$CityModelCopyWith<$Res>
    implements $CityModelCopyWith<$Res> {
  factory _$CityModelCopyWith(
          _CityModel value, $Res Function(_CityModel) _then) =
      __$CityModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name, double idx, double idy});
}

/// @nodoc
class __$CityModelCopyWithImpl<$Res> implements _$CityModelCopyWith<$Res> {
  __$CityModelCopyWithImpl(this._self, this._then);

  final _CityModel _self;
  final $Res Function(_CityModel) _then;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? idx = null,
    Object? idy = null,
  }) {
    return _then(_CityModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      idx: null == idx
          ? _self.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as double,
      idy: null == idy
          ? _self.idy
          : idy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
