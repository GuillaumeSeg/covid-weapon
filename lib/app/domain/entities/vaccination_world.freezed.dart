// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccination_world.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VaccinationWorldTearOff {
  const _$VaccinationWorldTearOff();

// ignore: unused_element
  _VaccinationWord call(
      {@required int total,
      @required double totalPercent,
      @required DateTime date}) {
    return _VaccinationWord(
      total: total,
      totalPercent: totalPercent,
      date: date,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VaccinationWorld = _$VaccinationWorldTearOff();

/// @nodoc
mixin _$VaccinationWorld {
  int get total;
  double get totalPercent;
  DateTime get date;

  $VaccinationWorldCopyWith<VaccinationWorld> get copyWith;
}

/// @nodoc
abstract class $VaccinationWorldCopyWith<$Res> {
  factory $VaccinationWorldCopyWith(
          VaccinationWorld value, $Res Function(VaccinationWorld) then) =
      _$VaccinationWorldCopyWithImpl<$Res>;
  $Res call({int total, double totalPercent, DateTime date});
}

/// @nodoc
class _$VaccinationWorldCopyWithImpl<$Res>
    implements $VaccinationWorldCopyWith<$Res> {
  _$VaccinationWorldCopyWithImpl(this._value, this._then);

  final VaccinationWorld _value;
  // ignore: unused_field
  final $Res Function(VaccinationWorld) _then;

  @override
  $Res call({
    Object total = freezed,
    Object totalPercent = freezed,
    Object date = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed ? _value.total : total as int,
      totalPercent: totalPercent == freezed
          ? _value.totalPercent
          : totalPercent as double,
      date: date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$VaccinationWordCopyWith<$Res>
    implements $VaccinationWorldCopyWith<$Res> {
  factory _$VaccinationWordCopyWith(
          _VaccinationWord value, $Res Function(_VaccinationWord) then) =
      __$VaccinationWordCopyWithImpl<$Res>;
  @override
  $Res call({int total, double totalPercent, DateTime date});
}

/// @nodoc
class __$VaccinationWordCopyWithImpl<$Res>
    extends _$VaccinationWorldCopyWithImpl<$Res>
    implements _$VaccinationWordCopyWith<$Res> {
  __$VaccinationWordCopyWithImpl(
      _VaccinationWord _value, $Res Function(_VaccinationWord) _then)
      : super(_value, (v) => _then(v as _VaccinationWord));

  @override
  _VaccinationWord get _value => super._value as _VaccinationWord;

  @override
  $Res call({
    Object total = freezed,
    Object totalPercent = freezed,
    Object date = freezed,
  }) {
    return _then(_VaccinationWord(
      total: total == freezed ? _value.total : total as int,
      totalPercent: totalPercent == freezed
          ? _value.totalPercent
          : totalPercent as double,
      date: date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
class _$_VaccinationWord implements _VaccinationWord {
  const _$_VaccinationWord(
      {@required this.total, @required this.totalPercent, @required this.date})
      : assert(total != null),
        assert(totalPercent != null),
        assert(date != null);

  @override
  final int total;
  @override
  final double totalPercent;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'VaccinationWorld(total: $total, totalPercent: $totalPercent, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinationWord &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.totalPercent, totalPercent) ||
                const DeepCollectionEquality()
                    .equals(other.totalPercent, totalPercent)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(totalPercent) ^
      const DeepCollectionEquality().hash(date);

  @override
  _$VaccinationWordCopyWith<_VaccinationWord> get copyWith =>
      __$VaccinationWordCopyWithImpl<_VaccinationWord>(this, _$identity);
}

abstract class _VaccinationWord implements VaccinationWorld {
  const factory _VaccinationWord(
      {@required int total,
      @required double totalPercent,
      @required DateTime date}) = _$_VaccinationWord;

  @override
  int get total;
  @override
  double get totalPercent;
  @override
  DateTime get date;
  @override
  _$VaccinationWordCopyWith<_VaccinationWord> get copyWith;
}
