// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccination_world_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VaccinationWorldDtoTearOff {
  const _$VaccinationWorldDtoTearOff();

// ignore: unused_element
  _VaccinationWorldDto call(
      {@required String date,
      @required int totalVaccinated,
      @required double percentageVaccinated}) {
    return _VaccinationWorldDto(
      date: date,
      totalVaccinated: totalVaccinated,
      percentageVaccinated: percentageVaccinated,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VaccinationWorldDto = _$VaccinationWorldDtoTearOff();

/// @nodoc
mixin _$VaccinationWorldDto {
  String get date; // 2021-01-08
  int get totalVaccinated;
  double get percentageVaccinated;

  $VaccinationWorldDtoCopyWith<VaccinationWorldDto> get copyWith;
}

/// @nodoc
abstract class $VaccinationWorldDtoCopyWith<$Res> {
  factory $VaccinationWorldDtoCopyWith(
          VaccinationWorldDto value, $Res Function(VaccinationWorldDto) then) =
      _$VaccinationWorldDtoCopyWithImpl<$Res>;
  $Res call({String date, int totalVaccinated, double percentageVaccinated});
}

/// @nodoc
class _$VaccinationWorldDtoCopyWithImpl<$Res>
    implements $VaccinationWorldDtoCopyWith<$Res> {
  _$VaccinationWorldDtoCopyWithImpl(this._value, this._then);

  final VaccinationWorldDto _value;
  // ignore: unused_field
  final $Res Function(VaccinationWorldDto) _then;

  @override
  $Res call({
    Object date = freezed,
    Object totalVaccinated = freezed,
    Object percentageVaccinated = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as String,
      totalVaccinated: totalVaccinated == freezed
          ? _value.totalVaccinated
          : totalVaccinated as int,
      percentageVaccinated: percentageVaccinated == freezed
          ? _value.percentageVaccinated
          : percentageVaccinated as double,
    ));
  }
}

/// @nodoc
abstract class _$VaccinationWorldDtoCopyWith<$Res>
    implements $VaccinationWorldDtoCopyWith<$Res> {
  factory _$VaccinationWorldDtoCopyWith(_VaccinationWorldDto value,
          $Res Function(_VaccinationWorldDto) then) =
      __$VaccinationWorldDtoCopyWithImpl<$Res>;
  @override
  $Res call({String date, int totalVaccinated, double percentageVaccinated});
}

/// @nodoc
class __$VaccinationWorldDtoCopyWithImpl<$Res>
    extends _$VaccinationWorldDtoCopyWithImpl<$Res>
    implements _$VaccinationWorldDtoCopyWith<$Res> {
  __$VaccinationWorldDtoCopyWithImpl(
      _VaccinationWorldDto _value, $Res Function(_VaccinationWorldDto) _then)
      : super(_value, (v) => _then(v as _VaccinationWorldDto));

  @override
  _VaccinationWorldDto get _value => super._value as _VaccinationWorldDto;

  @override
  $Res call({
    Object date = freezed,
    Object totalVaccinated = freezed,
    Object percentageVaccinated = freezed,
  }) {
    return _then(_VaccinationWorldDto(
      date: date == freezed ? _value.date : date as String,
      totalVaccinated: totalVaccinated == freezed
          ? _value.totalVaccinated
          : totalVaccinated as int,
      percentageVaccinated: percentageVaccinated == freezed
          ? _value.percentageVaccinated
          : percentageVaccinated as double,
    ));
  }
}

/// @nodoc
class _$_VaccinationWorldDto
    with DiagnosticableTreeMixin
    implements _VaccinationWorldDto {
  const _$_VaccinationWorldDto(
      {@required this.date,
      @required this.totalVaccinated,
      @required this.percentageVaccinated})
      : assert(date != null),
        assert(totalVaccinated != null),
        assert(percentageVaccinated != null);

  @override
  final String date;
  @override // 2021-01-08
  final int totalVaccinated;
  @override
  final double percentageVaccinated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VaccinationWorldDto(date: $date, totalVaccinated: $totalVaccinated, percentageVaccinated: $percentageVaccinated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VaccinationWorldDto'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('totalVaccinated', totalVaccinated))
      ..add(DiagnosticsProperty('percentageVaccinated', percentageVaccinated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinationWorldDto &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.totalVaccinated, totalVaccinated) ||
                const DeepCollectionEquality()
                    .equals(other.totalVaccinated, totalVaccinated)) &&
            (identical(other.percentageVaccinated, percentageVaccinated) ||
                const DeepCollectionEquality()
                    .equals(other.percentageVaccinated, percentageVaccinated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(totalVaccinated) ^
      const DeepCollectionEquality().hash(percentageVaccinated);

  @override
  _$VaccinationWorldDtoCopyWith<_VaccinationWorldDto> get copyWith =>
      __$VaccinationWorldDtoCopyWithImpl<_VaccinationWorldDto>(
          this, _$identity);
}

abstract class _VaccinationWorldDto implements VaccinationWorldDto {
  const factory _VaccinationWorldDto(
      {@required String date,
      @required int totalVaccinated,
      @required double percentageVaccinated}) = _$_VaccinationWorldDto;

  @override
  String get date;
  @override // 2021-01-08
  int get totalVaccinated;
  @override
  double get percentageVaccinated;
  @override
  _$VaccinationWorldDtoCopyWith<_VaccinationWorldDto> get copyWith;
}
