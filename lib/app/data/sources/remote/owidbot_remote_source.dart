import 'dart:io';

import 'package:covid_weapon/app/data/dtos/vaccination_country_dto.dart';
import 'package:covid_weapon/app/data/dtos/vaccination_entry_dto.dart';
import 'package:covid_weapon/core/utils/utils.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

class OwidbotRemoteSource {
  final Dio _http;

  OwidbotRemoteSource({@required Dio http}) : _http = http;

  Future<bool> downloadVaccinationDataForCountry(String country) async {
    try {
      // Download raw CSV and save file in cache
      Response response;
      String csvName =
          'vaccinations$country.csv'; // file name that you desire to keep
      String savePath = await Utils.getFilePath(csvName);
      response = await _http.download(
          '/vaccinations/country_data/$country.csv', savePath);

      return response.statusCode == 200 ? true : false;
    } on DioError catch (e) {
      print('ERROR $e');
      return false;
    }
  }

  Future<bool> downloadWorldData() async {
    try {
      // Download raw CSV and save file in cache
      Response response;
      String csvName =
          'vaccinationsWorld.csv'; // file name that you desire to keep
      String savePath = await Utils.getFilePath(csvName);
      response = await _http.download(
          '/vaccinations/vaccinations.csv', savePath);

      return response.statusCode == 200 ? true : false;
    } on DioError catch (e) {
      print('ERROR $e');
      return false;
    }
  }


  Future<VaccinationCountryDto> getVaccinationForCountry(String country) async {
    List<VaccinationEntryDto> entries = [];
    try {
      // Download raw CSV and save file in cache
      Response response;
      String csvName =
          'vaccinations$country.csv'; // file name that you desire to keep
      String savePath = await Utils.getFilePath(csvName);
      response = await _http.download(
          '/vaccinations/country_data/$country.csv', savePath);

      if (response.statusCode == 200) {
        // Read file in cache
        final File file = File(savePath);
        // Parse file to DTO.
        entries = file.readAsLinesSync()
            .skip(1) // Skip the header row
            .map((line) => VaccinationEntryDto.fromLine(line))
            .toList();
        print(entries);
      } else {
        print('Error retrieving Country CSV');
      }
    } on DioError catch (e) {
      print('ERROR YOLO');
    }
    return VaccinationCountryDto(name: country, list: entries);
  }

}
