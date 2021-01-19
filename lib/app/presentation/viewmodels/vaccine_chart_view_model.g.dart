// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_chart_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VaccineChartViewModel on _VaccineChartViewModel, Store {
  Computed<String> _$countryNameComputed;

  @override
  String get countryName =>
      (_$countryNameComputed ??= Computed<String>(() => super.countryName,
              name: '_VaccineChartViewModel.countryName'))
          .value;
  Computed<List<VaccinationCountry>> _$listPercentCountriesComputed;

  @override
  List<VaccinationCountry> get listPercentCountries =>
      (_$listPercentCountriesComputed ??= Computed<List<VaccinationCountry>>(
              () => super.listPercentCountries,
              name: '_VaccineChartViewModel.listPercentCountries'))
          .value;
  Computed<List<VaccinationEntry>> _$listVaccinatedComputed;

  @override
  List<VaccinationEntry> get listVaccinated => (_$listVaccinatedComputed ??=
          Computed<List<VaccinationEntry>>(() => super.listVaccinated,
              name: '_VaccineChartViewModel.listVaccinated'))
      .value;
  Computed<List<VaccinationCountry>> _$listCountriesComputed;

  @override
  List<VaccinationCountry> get listCountries => (_$listCountriesComputed ??=
          Computed<List<VaccinationCountry>>(() => super.listCountries,
              name: '_VaccineChartViewModel.listCountries'))
      .value;
  Computed<List<BarChartDataCountry>> _$listBarChartComputed;

  @override
  List<BarChartDataCountry> get listBarChart => (_$listBarChartComputed ??=
          Computed<List<BarChartDataCountry>>(() => super.listBarChart,
              name: '_VaccineChartViewModel.listBarChart'))
      .value;

  final _$_countryNameAtom = Atom(name: '_VaccineChartViewModel._countryName');

  @override
  String get _countryName {
    _$_countryNameAtom.reportRead();
    return super._countryName;
  }

  @override
  set _countryName(String value) {
    _$_countryNameAtom.reportWrite(value, super._countryName, () {
      super._countryName = value;
    });
  }

  final _$_listPercentCountriesAtom =
      Atom(name: '_VaccineChartViewModel._listPercentCountries');

  @override
  List<VaccinationCountry> get _listPercentCountries {
    _$_listPercentCountriesAtom.reportRead();
    return super._listPercentCountries;
  }

  @override
  set _listPercentCountries(List<VaccinationCountry> value) {
    _$_listPercentCountriesAtom.reportWrite(value, super._listPercentCountries,
        () {
      super._listPercentCountries = value;
    });
  }

  final _$_listVaccinatedAtom =
      Atom(name: '_VaccineChartViewModel._listVaccinated');

  @override
  List<VaccinationEntry> get _listVaccinated {
    _$_listVaccinatedAtom.reportRead();
    return super._listVaccinated;
  }

  @override
  set _listVaccinated(List<VaccinationEntry> value) {
    _$_listVaccinatedAtom.reportWrite(value, super._listVaccinated, () {
      super._listVaccinated = value;
    });
  }

  final _$_listCountriesAtom =
      Atom(name: '_VaccineChartViewModel._listCountries');

  @override
  List<VaccinationCountry> get _listCountries {
    _$_listCountriesAtom.reportRead();
    return super._listCountries;
  }

  @override
  set _listCountries(List<VaccinationCountry> value) {
    _$_listCountriesAtom.reportWrite(value, super._listCountries, () {
      super._listCountries = value;
    });
  }

  @override
  String toString() {
    return '''
countryName: ${countryName},
listPercentCountries: ${listPercentCountries},
listVaccinated: ${listVaccinated},
listCountries: ${listCountries},
listBarChart: ${listBarChart}
    ''';
  }
}
