import 'package:covid_weapon/app/data/dtos/vaccine_dto.dart';
import 'package:covid_weapon/app/domain/entities/vaccine.dart';
import 'package:meta/meta.dart';

import 'package:covid_weapon/app/data/sources/local/local_source.dart';
import 'package:covid_weapon/app/domain/repositories/vaccine_repository.dart';

class VaccineRepositoryImpl implements VaccineRepository {
  final LocalSource _localSource;

  VaccineRepositoryImpl({@required LocalSource localSource})
      : _localSource = localSource;

  @override
  Future<List<Vaccine>> getVaccineInfo() async {
    List<VaccineDto> vaccinesDto = await _localSource.getVaccinesInfo();
    return vaccinesDto.map((vaccineDto) => vaccineDto.toDomain()).toList();
  }
}
