// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'immunity_bomb_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImmunityBombViewModel on _ImmunityBombViewModel, Store {
  Computed<String> _$totalPeopleVaccinatedComputed;

  @override
  String get totalPeopleVaccinated => (_$totalPeopleVaccinatedComputed ??=
          Computed<String>(() => super.totalPeopleVaccinated,
              name: '_ImmunityBombViewModel.totalPeopleVaccinated'))
      .value;
  Computed<double> _$totalPeopleVaccinatedPercentComputed;

  @override
  double get totalPeopleVaccinatedPercent =>
      (_$totalPeopleVaccinatedPercentComputed ??= Computed<double>(
              () => super.totalPeopleVaccinatedPercent,
              name: '_ImmunityBombViewModel.totalPeopleVaccinatedPercent'))
          .value;
  Computed<String> _$dateVaccinatedFormatedComputed;

  @override
  String get dateVaccinatedFormated => (_$dateVaccinatedFormatedComputed ??=
          Computed<String>(() => super.dateVaccinatedFormated,
              name: '_ImmunityBombViewModel.dateVaccinatedFormated'))
      .value;

  final _$_totalPeopleVaccinatedAtom =
      Atom(name: '_ImmunityBombViewModel._totalPeopleVaccinated');

  @override
  int get _totalPeopleVaccinated {
    _$_totalPeopleVaccinatedAtom.reportRead();
    return super._totalPeopleVaccinated;
  }

  @override
  set _totalPeopleVaccinated(int value) {
    _$_totalPeopleVaccinatedAtom
        .reportWrite(value, super._totalPeopleVaccinated, () {
      super._totalPeopleVaccinated = value;
    });
  }

  final _$_totalPeopleVaccinatedPercentAtom =
      Atom(name: '_ImmunityBombViewModel._totalPeopleVaccinatedPercent');

  @override
  double get _totalPeopleVaccinatedPercent {
    _$_totalPeopleVaccinatedPercentAtom.reportRead();
    return super._totalPeopleVaccinatedPercent;
  }

  @override
  set _totalPeopleVaccinatedPercent(double value) {
    _$_totalPeopleVaccinatedPercentAtom
        .reportWrite(value, super._totalPeopleVaccinatedPercent, () {
      super._totalPeopleVaccinatedPercent = value;
    });
  }

  final _$_dateVaccinatedAtom =
      Atom(name: '_ImmunityBombViewModel._dateVaccinated');

  @override
  DateTime get _dateVaccinated {
    _$_dateVaccinatedAtom.reportRead();
    return super._dateVaccinated;
  }

  @override
  set _dateVaccinated(DateTime value) {
    _$_dateVaccinatedAtom.reportWrite(value, super._dateVaccinated, () {
      super._dateVaccinated = value;
    });
  }

  @override
  String toString() {
    return '''
totalPeopleVaccinated: ${totalPeopleVaccinated},
totalPeopleVaccinatedPercent: ${totalPeopleVaccinatedPercent},
dateVaccinatedFormated: ${dateVaccinatedFormated}
    ''';
  }
}
