import 'package:covid_weapon/app/domain/entities/vaccination_entry.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccination_entry_dto.freezed.dart';

@freezed
abstract class VaccinationEntryDto with _$VaccinationEntryDto {
  const factory VaccinationEntryDto({
    @required String date, // 2021-01-08
    @required int totalVaccinated,
  }) = _VaccinationEntryDto;

  factory VaccinationEntryDto.fromLine(String line) {
    final formatedLine = line.replaceAll(', ', ' - ');
    final parts = formatedLine.split(',');
    try {
      final total = int.parse(parts[5]);
      return VaccinationEntryDto(date: parts[1], totalVaccinated: total);
    } on FormatException {
      return VaccinationEntryDto(date: parts[1], totalVaccinated: 0);
    }
  }
}

extension VaccinationEntryDtoX on VaccinationEntryDto {
  VaccinationEntry toDomain() {
    return VaccinationEntry(
      totalVaccinated: totalVaccinated,
      date: DateTime.parse(date),
    );
  }
}
