import 'package:covid_weapon/app/data/dtos/vaccination_country_dto.dart';
import 'package:covid_weapon/app/data/repositories/country_list.dart';
import 'package:covid_weapon/app/data/sources/local/local_source.dart';
import 'package:covid_weapon/app/domain/entities/vaccination_country.dart';
import 'package:meta/meta.dart';
import 'package:covid_weapon/app/data/sources/remote/owidbot_remote_source.dart';
import 'package:covid_weapon/app/domain/repositories/vaccination_country_repository.dart';

class VaccinationCountryRepositoryImpl implements VaccinationCountryRepository {
  final OwidbotRemoteSource _remoteSource;
  final LocalSource _localSource;

  VaccinationCountryRepositoryImpl(
      {@required OwidbotRemoteSource remoteSource,
      @required LocalSource localSource})
      : _remoteSource = remoteSource,
        _localSource = localSource;

  @override
  Future<void> downloadCountriesData() async {
    await Future.wait(
      countryList.map((String country) {
        return _remoteSource.downloadVaccinationDataForCountry(country);
      }),
    );
  }

  @override
  Future<VaccinationCountry> getEntriesForCountry(String country) async {
    VaccinationCountryDto resultDto =
        await _remoteSource.getVaccinationForCountry(country);

    return resultDto.toDomain();
  }

  @override
  Future<List<VaccinationCountry>> getAllCountriesEntries() async {
    List<VaccinationCountry> list = [];

    list = await Future.wait(
      countryList.map((String country) async {
        VaccinationCountryDto resultDto =
            await _localSource.getVaccinationForCountry(country);

        return resultDto.toDomain();
      }).toList(),
    );

    return list;
  }

  @override
  Future<List<VaccinationCountry>> getAllCountryPercent() async {
    List<VaccinationCountry> list = [];

    list = await Future.wait(
      countryList.map((String country) async {
        VaccinationCountryDto resultDto =
        await _localSource.getVaccinationPercentForCountry(country);

        return resultDto.toDomain();
      }).toList(),
    );

    return list;
  }
}
