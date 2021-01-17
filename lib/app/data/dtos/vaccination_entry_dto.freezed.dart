// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccination_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VaccinationEntryDtoTearOff {
  const _$VaccinationEntryDtoTearOff();

// ignore: unused_element
  _VaccinationEntryDto call(
      {@required String date, @required int totalVaccinated}) {
    return _VaccinationEntryDto(
      date: date,
      totalVaccinated: totalVaccinated,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VaccinationEntryDto = _$VaccinationEntryDtoTearOff();

/// @nodoc
mixin _$VaccinationEntryDto {
  String get date; // 2021-01-08
  int get totalVaccinated;

  $VaccinationEntryDtoCopyWith<VaccinationEntryDto> get copyWith;
}

/// @nodoc
abstract class $VaccinationEntryDtoCopyWith<$Res> {
  factory $VaccinationEntryDtoCopyWith(
          VaccinationEntryDto value, $Res Function(VaccinationEntryDto) then) =
      _$VaccinationEntryDtoCopyWithImpl<$Res>;
  $Res call({String date, int totalVaccinated});
}

/// @nodoc
class _$VaccinationEntryDtoCopyWithImpl<$Res>
    implements $VaccinationEntryDtoCopyWith<$Res> {
  _$VaccinationEntryDtoCopyWithImpl(this._value, this._then);

  final VaccinationEntryDto _value;
  // ignore: unused_field
  final $Res Function(VaccinationEntryDto) _then;

  @override
  $Res call({
    Object date = freezed,
    Object totalVaccinated = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as String,
      totalVaccinated: totalVaccinated == freezed
          ? _value.totalVaccinated
          : totalVaccinated as int,
    ));
  }
}

/// @nodoc
abstract class _$VaccinationEntryDtoCopyWith<$Res>
    implements $VaccinationEntryDtoCopyWith<$Res> {
  factory _$VaccinationEntryDtoCopyWith(_VaccinationEntryDto value,
          $Res Function(_VaccinationEntryDto) then) =
      __$VaccinationEntryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String date, int totalVaccinated});
}

/// @nodoc
class __$VaccinationEntryDtoCopyWithImpl<$Res>
    extends _$VaccinationEntryDtoCopyWithImpl<$Res>
    implements _$VaccinationEntryDtoCopyWith<$Res> {
  __$VaccinationEntryDtoCopyWithImpl(
      _VaccinationEntryDto _value, $Res Function(_VaccinationEntryDto) _then)
      : super(_value, (v) => _then(v as _VaccinationEntryDto));

  @override
  _VaccinationEntryDto get _value => super._value as _VaccinationEntryDto;

  @override
  $Res call({
    Object date = freezed,
    Object totalVaccinated = freezed,
  }) {
    return _then(_VaccinationEntryDto(
      date: date == freezed ? _value.date : date as String,
      totalVaccinated: totalVaccinated == freezed
          ? _value.totalVaccinated
          : totalVaccinated as int,
    ));
  }
}

/// @nodoc
class _$_VaccinationEntryDto
    with DiagnosticableTreeMixin
    implements _VaccinationEntryDto {
  const _$_VaccinationEntryDto(
      {@required this.date, @required this.totalVaccinated})
      : assert(date != null),
        assert(totalVaccinated != null);

  @override
  final String date;
  @override // 2021-01-08
  final int totalVaccinated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VaccinationEntryDto(date: $date, totalVaccinated: $totalVaccinated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VaccinationEntryDto'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('totalVaccinated', totalVaccinated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinationEntryDto &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.totalVaccinated, totalVaccinated) ||
                const DeepCollectionEquality()
                    .equals(other.totalVaccinated, totalVaccinated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(totalVaccinated);

  @override
  _$VaccinationEntryDtoCopyWith<_VaccinationEntryDto> get copyWith =>
      __$VaccinationEntryDtoCopyWithImpl<_VaccinationEntryDto>(
          this, _$identity);
}

abstract class _VaccinationEntryDto implements VaccinationEntryDto {
  const factory _VaccinationEntryDto(
      {@required String date,
      @required int totalVaccinated}) = _$_VaccinationEntryDto;

  @override
  String get date;
  @override // 2021-01-08
  int get totalVaccinated;
  @override
  _$VaccinationEntryDtoCopyWith<_VaccinationEntryDto> get copyWith;
}
