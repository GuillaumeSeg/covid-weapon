import 'package:covid_weapon/app/data/dtos/vaccination_entry_dto.dart';
import 'package:covid_weapon/app/domain/entities/vaccination_country.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccination_country_dto.freezed.dart';

@freezed
abstract class VaccinationCountryDto with _$VaccinationCountryDto {
  const factory VaccinationCountryDto({
    @required String name,
    @required List<VaccinationEntryDto> list,
  }) = _VaccinationCountryDto;
}

extension VaccinationCountryDtoX on VaccinationCountryDto {
  VaccinationCountry toDomain() {
    return VaccinationCountry(
      name: name,
      entries: list.map((VaccinationEntryDto entry) {
        return entry.toDomain();
      }).toList(),
    );
  }
}
