// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccination_country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VaccinationCountryTearOff {
  const _$VaccinationCountryTearOff();

// ignore: unused_element
  _VaccinationCountry call(
      {@required String name, @required List<VaccinationEntry> entries}) {
    return _VaccinationCountry(
      name: name,
      entries: entries,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VaccinationCountry = _$VaccinationCountryTearOff();

/// @nodoc
mixin _$VaccinationCountry {
  String get name;
  List<VaccinationEntry> get entries;

  $VaccinationCountryCopyWith<VaccinationCountry> get copyWith;
}

/// @nodoc
abstract class $VaccinationCountryCopyWith<$Res> {
  factory $VaccinationCountryCopyWith(
          VaccinationCountry value, $Res Function(VaccinationCountry) then) =
      _$VaccinationCountryCopyWithImpl<$Res>;
  $Res call({String name, List<VaccinationEntry> entries});
}

/// @nodoc
class _$VaccinationCountryCopyWithImpl<$Res>
    implements $VaccinationCountryCopyWith<$Res> {
  _$VaccinationCountryCopyWithImpl(this._value, this._then);

  final VaccinationCountry _value;
  // ignore: unused_field
  final $Res Function(VaccinationCountry) _then;

  @override
  $Res call({
    Object name = freezed,
    Object entries = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      entries: entries == freezed
          ? _value.entries
          : entries as List<VaccinationEntry>,
    ));
  }
}

/// @nodoc
abstract class _$VaccinationCountryCopyWith<$Res>
    implements $VaccinationCountryCopyWith<$Res> {
  factory _$VaccinationCountryCopyWith(
          _VaccinationCountry value, $Res Function(_VaccinationCountry) then) =
      __$VaccinationCountryCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<VaccinationEntry> entries});
}

/// @nodoc
class __$VaccinationCountryCopyWithImpl<$Res>
    extends _$VaccinationCountryCopyWithImpl<$Res>
    implements _$VaccinationCountryCopyWith<$Res> {
  __$VaccinationCountryCopyWithImpl(
      _VaccinationCountry _value, $Res Function(_VaccinationCountry) _then)
      : super(_value, (v) => _then(v as _VaccinationCountry));

  @override
  _VaccinationCountry get _value => super._value as _VaccinationCountry;

  @override
  $Res call({
    Object name = freezed,
    Object entries = freezed,
  }) {
    return _then(_VaccinationCountry(
      name: name == freezed ? _value.name : name as String,
      entries: entries == freezed
          ? _value.entries
          : entries as List<VaccinationEntry>,
    ));
  }
}

/// @nodoc
class _$_VaccinationCountry
    with DiagnosticableTreeMixin
    implements _VaccinationCountry {
  const _$_VaccinationCountry({@required this.name, @required this.entries})
      : assert(name != null),
        assert(entries != null);

  @override
  final String name;
  @override
  final List<VaccinationEntry> entries;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VaccinationCountry(name: $name, entries: $entries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VaccinationCountry'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('entries', entries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinationCountry &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality().equals(other.entries, entries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(entries);

  @override
  _$VaccinationCountryCopyWith<_VaccinationCountry> get copyWith =>
      __$VaccinationCountryCopyWithImpl<_VaccinationCountry>(this, _$identity);
}

abstract class _VaccinationCountry implements VaccinationCountry {
  const factory _VaccinationCountry(
      {@required String name,
      @required List<VaccinationEntry> entries}) = _$_VaccinationCountry;

  @override
  String get name;
  @override
  List<VaccinationEntry> get entries;
  @override
  _$VaccinationCountryCopyWith<_VaccinationCountry> get copyWith;
}
