import 'package:covid_weapon/app/domain/entities/vaccination_country.dart';

import 'repository.dart';

abstract class VaccinationCountryRepository implements Repository {

  Future<void> downloadCountriesData();

  Future<VaccinationCountry> getEntriesForCountry(String country);

  Future<List<VaccinationCountry>> getAllCountriesEntries();

  Future<List<VaccinationCountry>> getAllCountryPercent();

}