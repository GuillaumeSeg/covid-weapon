import 'dart:convert';
import 'dart:io';

import 'package:covid_weapon/app/data/dtos/vaccination_country_dto.dart';
import 'package:covid_weapon/app/data/dtos/vaccination_entry_dto.dart';
import 'package:covid_weapon/app/data/dtos/vaccination_world_dto.dart';
import 'package:covid_weapon/app/data/dtos/vaccine_dto.dart';
import 'package:covid_weapon/core/utils/utils.dart';
import 'package:flutter/services.dart';

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

  Future<VaccinationCountryDto> getVaccinationPercentForCountry(
      String country) async {
    // file name that you desire to keep
    String csvName = 'vaccinationsWorld.csv';
    String localPath = await Utils.getFilePath(csvName);

    // Read file in cache
    final File file = File(localPath);
    // Parse file to DTO.
    VaccinationCountryDto entry = VaccinationCountryDto(
      name: country,
      totalPercent: 0.0,
    );
    double max = 0;

    file
        .readAsLinesSync()
        .skipWhile((line) => !line.startsWith(country))
        .takeWhile((line) => line.startsWith(country))
        .map((line) {
      final parts = line.split(',');
      double totalPercent;
      totalPercent = parts[9].isEmpty ? 0.0 : double.parse(parts[9]);
      if (max <= totalPercent) {
        max = totalPercent;
        entry = VaccinationCountryDto(
          name: country,
          totalPercent: totalPercent,
        );
      }
    }).toList();

    return entry;
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
      int total;
      try {
        total = int.parse(parts[4]);
      } catch (e) {
        total = 0;
      }
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

  Future<List<VaccineDto>> getVaccinesInfo() async {
    final str = await rootBundle.loadString('assets/vaccines.json');

    if (str == null) {
      return [];
    } else {
      Iterable jsonList = json.decode(str);
      List<VaccineDto> result = jsonList
          .map((json) => VaccineDto.fromJson(json as Map<String, dynamic>))
          .toList();
      return result;
    }
  }
}
