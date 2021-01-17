import 'package:covid_weapon/app/domain/entities/vaccination_world.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccination_world_dto.freezed.dart';

@freezed
abstract class VaccinationWorldDto with _$VaccinationWorldDto {
  const factory VaccinationWorldDto({
    @required String date, // 2021-01-08
    @required int totalVaccinated,
    @required double percentageVaccinated,
  }) = _VaccinationWorldDto;
}

extension VaccinationWorldDtoX on VaccinationWorldDto {
  VaccinationWorld toDomain() {
    return VaccinationWorld(
      total: totalVaccinated,
      totalPercent: percentageVaccinated,
      date: DateTime.parse(date),
    );
  }
}
