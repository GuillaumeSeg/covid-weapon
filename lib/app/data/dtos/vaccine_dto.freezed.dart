// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccine_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VaccineDtoTearOff {
  const _$VaccineDtoTearOff();

// ignore: unused_element
  _VaccineDto call(
      {@required String name,
      @required String manufacturer,
      @required String status,
      @required String type,
      @required String origin,
      @required String efficiency,
      @required String conservation,
      @required String doses,
      @required String url}) {
    return _VaccineDto(
      name: name,
      manufacturer: manufacturer,
      status: status,
      type: type,
      origin: origin,
      efficiency: efficiency,
      conservation: conservation,
      doses: doses,
      url: url,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VaccineDto = _$VaccineDtoTearOff();

/// @nodoc
mixin _$VaccineDto {
  String get name;
  String get manufacturer;
  String get status;
  String get type;
  String get origin;
  String get efficiency;
  String get conservation;
  String get doses;
  String get url;

  $VaccineDtoCopyWith<VaccineDto> get copyWith;
}

/// @nodoc
abstract class $VaccineDtoCopyWith<$Res> {
  factory $VaccineDtoCopyWith(
          VaccineDto value, $Res Function(VaccineDto) then) =
      _$VaccineDtoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String manufacturer,
      String status,
      String type,
      String origin,
      String efficiency,
      String conservation,
      String doses,
      String url});
}

/// @nodoc
class _$VaccineDtoCopyWithImpl<$Res> implements $VaccineDtoCopyWith<$Res> {
  _$VaccineDtoCopyWithImpl(this._value, this._then);

  final VaccineDto _value;
  // ignore: unused_field
  final $Res Function(VaccineDto) _then;

  @override
  $Res call({
    Object name = freezed,
    Object manufacturer = freezed,
    Object status = freezed,
    Object type = freezed,
    Object origin = freezed,
    Object efficiency = freezed,
    Object conservation = freezed,
    Object doses = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer as String,
      status: status == freezed ? _value.status : status as String,
      type: type == freezed ? _value.type : type as String,
      origin: origin == freezed ? _value.origin : origin as String,
      efficiency:
          efficiency == freezed ? _value.efficiency : efficiency as String,
      conservation: conservation == freezed
          ? _value.conservation
          : conservation as String,
      doses: doses == freezed ? _value.doses : doses as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class _$VaccineDtoCopyWith<$Res> implements $VaccineDtoCopyWith<$Res> {
  factory _$VaccineDtoCopyWith(
          _VaccineDto value, $Res Function(_VaccineDto) then) =
      __$VaccineDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String manufacturer,
      String status,
      String type,
      String origin,
      String efficiency,
      String conservation,
      String doses,
      String url});
}

/// @nodoc
class __$VaccineDtoCopyWithImpl<$Res> extends _$VaccineDtoCopyWithImpl<$Res>
    implements _$VaccineDtoCopyWith<$Res> {
  __$VaccineDtoCopyWithImpl(
      _VaccineDto _value, $Res Function(_VaccineDto) _then)
      : super(_value, (v) => _then(v as _VaccineDto));

  @override
  _VaccineDto get _value => super._value as _VaccineDto;

  @override
  $Res call({
    Object name = freezed,
    Object manufacturer = freezed,
    Object status = freezed,
    Object type = freezed,
    Object origin = freezed,
    Object efficiency = freezed,
    Object conservation = freezed,
    Object doses = freezed,
    Object url = freezed,
  }) {
    return _then(_VaccineDto(
      name: name == freezed ? _value.name : name as String,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer as String,
      status: status == freezed ? _value.status : status as String,
      type: type == freezed ? _value.type : type as String,
      origin: origin == freezed ? _value.origin : origin as String,
      efficiency:
          efficiency == freezed ? _value.efficiency : efficiency as String,
      conservation: conservation == freezed
          ? _value.conservation
          : conservation as String,
      doses: doses == freezed ? _value.doses : doses as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
class _$_VaccineDto implements _VaccineDto {
  const _$_VaccineDto(
      {@required this.name,
      @required this.manufacturer,
      @required this.status,
      @required this.type,
      @required this.origin,
      @required this.efficiency,
      @required this.conservation,
      @required this.doses,
      @required this.url})
      : assert(name != null),
        assert(manufacturer != null),
        assert(status != null),
        assert(type != null),
        assert(origin != null),
        assert(efficiency != null),
        assert(conservation != null),
        assert(doses != null),
        assert(url != null);

  @override
  final String name;
  @override
  final String manufacturer;
  @override
  final String status;
  @override
  final String type;
  @override
  final String origin;
  @override
  final String efficiency;
  @override
  final String conservation;
  @override
  final String doses;
  @override
  final String url;

  @override
  String toString() {
    return 'VaccineDto(name: $name, manufacturer: $manufacturer, status: $status, type: $type, origin: $origin, efficiency: $efficiency, conservation: $conservation, doses: $doses, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccineDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.manufacturer, manufacturer) ||
                const DeepCollectionEquality()
                    .equals(other.manufacturer, manufacturer)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.efficiency, efficiency) ||
                const DeepCollectionEquality()
                    .equals(other.efficiency, efficiency)) &&
            (identical(other.conservation, conservation) ||
                const DeepCollectionEquality()
                    .equals(other.conservation, conservation)) &&
            (identical(other.doses, doses) ||
                const DeepCollectionEquality().equals(other.doses, doses)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(manufacturer) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(efficiency) ^
      const DeepCollectionEquality().hash(conservation) ^
      const DeepCollectionEquality().hash(doses) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$VaccineDtoCopyWith<_VaccineDto> get copyWith =>
      __$VaccineDtoCopyWithImpl<_VaccineDto>(this, _$identity);
}

abstract class _VaccineDto implements VaccineDto {
  const factory _VaccineDto(
      {@required String name,
      @required String manufacturer,
      @required String status,
      @required String type,
      @required String origin,
      @required String efficiency,
      @required String conservation,
      @required String doses,
      @required String url}) = _$_VaccineDto;

  @override
  String get name;
  @override
  String get manufacturer;
  @override
  String get status;
  @override
  String get type;
  @override
  String get origin;
  @override
  String get efficiency;
  @override
  String get conservation;
  @override
  String get doses;
  @override
  String get url;
  @override
  _$VaccineDtoCopyWith<_VaccineDto> get copyWith;
}
