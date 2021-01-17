import 'dart:io';

import 'package:covid_weapon/app/data/dtos/vaccination_country_dto.dart';
import 'package:covid_weapon/app/data/dtos/vaccination_entry_dto.dart';
import 'package:covid_weapon/app/data/dtos/vaccination_world_dto.dart';
import 'package:covid_weapon/core/utils/utils.dart';

class LocalSource {
  Future<VaccinationCountryDto> getVaccinationForCountry(String country) async {
    // file name that you desire to keep
    String csvName = 'vaccinations$country.csv';
    String localPath = await Utils.getFilePath(csvName);

    // Read file in cache
    final File file = File(localPath);
    // Parse file to DTO.
    List<VaccinationEntryDto> entries = [];
    entries = file
        .readAsLinesSync()
        .skip(1) // Skip the header row
        .map((line) => VaccinationEntryDto.fromLine(line))
        .toList();
    print(entries);

    return VaccinationCountryDto(name: country, list: entries);
  }

  Future<VaccinationWorldDto> getVaccinationWorld() async {
    // file name that you desire to keep
    String csvName = 'vaccinationsWorld.csv';
    String localPath = await Utils.getFilePath(csvName);

    // Read file in cache
    final File file = File(localPath);
    // Parse file to DTO.
    VaccinationWorldDto entry;
    int max = 0;

    file
        .readAsLinesSync()
        .skipWhile((line) => !line.startsWith('World'))
        .map((line) {
      final parts = line.split(',');
      final total = int.parse(parts[4]);
      if (max < total) {
        max = total;
        entry = VaccinationWorldDto(
          date: parts[2],
          totalVaccinated: total,
          percentageVaccinated: double.parse(parts[9]),
        );
      }
    }).toList();

    return entry;
  }
}