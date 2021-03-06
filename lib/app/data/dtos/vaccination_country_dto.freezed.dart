// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccination_country_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VaccinationCountryDtoTearOff {
  const _$VaccinationCountryDtoTearOff();

// ignore: unused_element
  _VaccinationCountryDto call(
      {@required String name,
      List<VaccinationEntryDto> list,
      double totalPercent}) {
    return _VaccinationCountryDto(
      name: name,
      list: list,
      totalPercent: totalPercent,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VaccinationCountryDto = _$VaccinationCountryDtoTearOff();

/// @nodoc
mixin _$VaccinationCountryDto {
  String get name;
  List<VaccinationEntryDto> get list;
  double get totalPercent;

  $VaccinationCountryDtoCopyWith<VaccinationCountryDto> get copyWith;
}

/// @nodoc
abstract class $VaccinationCountryDtoCopyWith<$Res> {
  factory $VaccinationCountryDtoCopyWith(VaccinationCountryDto value,
          $Res Function(VaccinationCountryDto) then) =
      _$VaccinationCountryDtoCopyWithImpl<$Res>;
  $Res call({String name, List<VaccinationEntryDto> list, double totalPercent});
}

/// @nodoc
class _$VaccinationCountryDtoCopyWithImpl<$Res>
    implements $VaccinationCountryDtoCopyWith<$Res> {
  _$VaccinationCountryDtoCopyWithImpl(this._value, this._then);

  final VaccinationCountryDto _value;
  // ignore: unused_field
  final $Res Function(VaccinationCountryDto) _then;

  @override
  $Res call({
    Object name = freezed,
    Object list = freezed,
    Object totalPercent = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      list: list == freezed ? _value.list : list as List<VaccinationEntryDto>,
      totalPercent: totalPercent == freezed
          ? _value.totalPercent
          : totalPercent as double,
    ));
  }
}

/// @nodoc
abstract class _$VaccinationCountryDtoCopyWith<$Res>
    implements $VaccinationCountryDtoCopyWith<$Res> {
  factory _$VaccinationCountryDtoCopyWith(_VaccinationCountryDto value,
          $Res Function(_VaccinationCountryDto) then) =
      __$VaccinationCountryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<VaccinationEntryDto> list, double totalPercent});
}

/// @nodoc
class __$VaccinationCountryDtoCopyWithImpl<$Res>
    extends _$VaccinationCountryDtoCopyWithImpl<$Res>
    implements _$VaccinationCountryDtoCopyWith<$Res> {
  __$VaccinationCountryDtoCopyWithImpl(_VaccinationCountryDto _value,
      $Res Function(_VaccinationCountryDto) _then)
      : super(_value, (v) => _then(v as _VaccinationCountryDto));

  @override
  _VaccinationCountryDto get _value => super._value as _VaccinationCountryDto;

  @override
  $Res call({
    Object name = freezed,
    Object list = freezed,
    Object totalPercent = freezed,
  }) {
    return _then(_VaccinationCountryDto(
      name: name == freezed ? _value.name : name as String,
      list: list == freezed ? _value.list : list as List<VaccinationEntryDto>,
      totalPercent: totalPercent == freezed
          ? _value.totalPercent
          : totalPercent as double,
    ));
  }
}

/// @nodoc
class _$_VaccinationCountryDto
    with DiagnosticableTreeMixin
    implements _VaccinationCountryDto {
  const _$_VaccinationCountryDto(
      {@required this.name, this.list, this.totalPercent})
      : assert(name != null);

  @override
  final String name;
  @override
  final List<VaccinationEntryDto> list;
  @override
  final double totalPercent;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VaccinationCountryDto(name: $name, list: $list, totalPercent: $totalPercent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VaccinationCountryDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('list', list))
      ..add(DiagnosticsProperty('totalPercent', totalPercent));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinationCountryDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.totalPercent, totalPercent) ||
                const DeepCollectionEquality()
                    .equals(other.totalPercent, totalPercent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(totalPercent);

  @override
  _$VaccinationCountryDtoCopyWith<_VaccinationCountryDto> get copyWith =>
      __$VaccinationCountryDtoCopyWithImpl<_VaccinationCountryDto>(
          this, _$identity);
}

abstract class _VaccinationCountryDto implements VaccinationCountryDto {
  const factory _VaccinationCountryDto(
      {@required String name,
      List<VaccinationEntryDto> list,
      double totalPercent}) = _$_VaccinationCountryDto;

  @override
  String get name;
  @override
  List<VaccinationEntryDto> get list;
  @override
  double get totalPercent;
  @override
  _$VaccinationCountryDtoCopyWith<_VaccinationCountryDto> get copyWith;
}
