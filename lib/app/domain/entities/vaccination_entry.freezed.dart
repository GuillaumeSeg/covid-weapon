// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccination_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VaccinationEntryTearOff {
  const _$VaccinationEntryTearOff();

// ignore: unused_element
  _VaccinationEntry call(
      {@required DateTime date, @required int totalVaccinated}) {
    return _VaccinationEntry(
      date: date,
      totalVaccinated: totalVaccinated,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VaccinationEntry = _$VaccinationEntryTearOff();

/// @nodoc
mixin _$VaccinationEntry {
  DateTime get date;
  int get totalVaccinated;

  $VaccinationEntryCopyWith<VaccinationEntry> get copyWith;
}

/// @nodoc
abstract class $VaccinationEntryCopyWith<$Res> {
  factory $VaccinationEntryCopyWith(
          VaccinationEntry value, $Res Function(VaccinationEntry) then) =
      _$VaccinationEntryCopyWithImpl<$Res>;
  $Res call({DateTime date, int totalVaccinated});
}

/// @nodoc
class _$VaccinationEntryCopyWithImpl<$Res>
    implements $VaccinationEntryCopyWith<$Res> {
  _$VaccinationEntryCopyWithImpl(this._value, this._then);

  final VaccinationEntry _value;
  // ignore: unused_field
  final $Res Function(VaccinationEntry) _then;

  @override
  $Res call({
    Object date = freezed,
    Object totalVaccinated = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      totalVaccinated: totalVaccinated == freezed
          ? _value.totalVaccinated
          : totalVaccinated as int,
    ));
  }
}

/// @nodoc
abstract class _$VaccinationEntryCopyWith<$Res>
    implements $VaccinationEntryCopyWith<$Res> {
  factory _$VaccinationEntryCopyWith(
          _VaccinationEntry value, $Res Function(_VaccinationEntry) then) =
      __$VaccinationEntryCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, int totalVaccinated});
}

/// @nodoc
class __$VaccinationEntryCopyWithImpl<$Res>
    extends _$VaccinationEntryCopyWithImpl<$Res>
    implements _$VaccinationEntryCopyWith<$Res> {
  __$VaccinationEntryCopyWithImpl(
      _VaccinationEntry _value, $Res Function(_VaccinationEntry) _then)
      : super(_value, (v) => _then(v as _VaccinationEntry));

  @override
  _VaccinationEntry get _value => super._value as _VaccinationEntry;

  @override
  $Res call({
    Object date = freezed,
    Object totalVaccinated = freezed,
  }) {
    return _then(_VaccinationEntry(
      date: date == freezed ? _value.date : date as DateTime,
      totalVaccinated: totalVaccinated == freezed
          ? _value.totalVaccinated
          : totalVaccinated as int,
    ));
  }
}

/// @nodoc
class _$_VaccinationEntry
    with DiagnosticableTreeMixin
    implements _VaccinationEntry {
  const _$_VaccinationEntry(
      {@required this.date, @required this.totalVaccinated})
      : assert(date != null),
        assert(totalVaccinated != null);

  @override
  final DateTime date;
  @override
  final int totalVaccinated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VaccinationEntry(date: $date, totalVaccinated: $totalVaccinated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VaccinationEntry'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('totalVaccinated', totalVaccinated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinationEntry &&
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
  _$VaccinationEntryCopyWith<_VaccinationEntry> get copyWith =>
      __$VaccinationEntryCopyWithImpl<_VaccinationEntry>(this, _$identity);
}

abstract class _VaccinationEntry implements VaccinationEntry {
  const factory _VaccinationEntry(
      {@required DateTime date,
      @required int totalVaccinated}) = _$_VaccinationEntry;

  @override
  DateTime get date;
  @override
  int get totalVaccinated;
  @override
  _$VaccinationEntryCopyWith<_VaccinationEntry> get copyWith;
}
