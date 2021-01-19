import 'package:covid_weapon/app/domain/entities/vaccination_country.dart';
import 'package:covid_weapon/app/domain/entities/vaccination_entry.dart';
import 'package:covid_weapon/app/domain/repositories/vaccination_country_repository.dart';
import 'package:meta/meta.dart';
import 'package:mobx/mobx.dart';

part 'vaccine_chart_view_model.g.dart';

/// View Model for the Vaccine Chart view
class VaccineChartViewModel = _VaccineChartViewModel
    with _$VaccineChartViewModel;

abstract class _VaccineChartViewModel with Store {
  final VaccinationCountryRepository _repository;

  _VaccineChartViewModel({@required VaccinationCountryRepository repository})
      : _repository = repository;

  //----------------------------------------------------------------------------
  // OBSERVABLE PROPERTIES AND GETTERS
  //----------------------------------------------------------------------------

  @observable
  String _countryName = "";

  @computed
  String get countryName => _countryName;

  @observable
  List<VaccinationCountry> _listPercentCountries = [];

  @computed
  List<VaccinationCountry> get listPercentCountries {
    _listPercentCountries.sort((VaccinationCountry a, VaccinationCountry b) {
      return a.percentVaccination.compareTo(b.percentVaccination);
    });
    return _listPercentCountries;
  }

  @observable
  List<VaccinationEntry> _listVaccinated = [];

  @computed
  List<VaccinationEntry> get listVaccinated => _listVaccinated;

  @observable
  List<VaccinationCountry> _listCountries = [];

  @computed
  List<VaccinationCountry> get listCountries => _listCountries;

  @computed
  List<BarChartDataCountry> get listBarChart {
    List<BarChartDataCountry> list = [];
    _listCountries.forEach((VaccinationCountry country) {
      int max = 0;
      country.entries.forEach((entry) {
        if (entry.totalVaccinated > max) {
          max = entry.totalVaccinated;
        }
      });
      list.add(BarChartDataCountry(country.name, max));
    });
    list.sort((BarChartDataCountry a, BarChartDataCountry b) {
      return a.totalVaccinated.compareTo(b.totalVaccinated);
    });
    return list;
  }


  //----------------------------------------------------------------------------
  // ACTIONS
  //----------------------------------------------------------------------------
  void getCountryData() async {
    final vaccinationCountry = await _repository.getEntriesForCountry("Germany");
    _countryName = vaccinationCountry.name;
    _listVaccinated = vaccinationCountry.entries;
  }

  void getAllCountriesData() async {
    final data = await _repository.getAllCountriesEntries();
    _listCountries = data;
    print("data = $data");
  }

  void getAllCountriesPercent() async {
    final data = await _repository.getAllCountryPercent();
    _listPercentCountries = data;
  }
}

class BarChartDataCountry {
  final String name;
  final int totalVaccinated;

  BarChartDataCountry(this.name, this.totalVaccinated);
}