import 'package:covid_weapon/app/data/dtos/vaccination_world_dto.dart';
import 'package:covid_weapon/app/domain/entities/vaccination_world.dart';
import 'package:meta/meta.dart';
import 'package:covid_weapon/app/data/sources/local/local_source.dart';
import 'package:covid_weapon/app/data/sources/remote/owidbot_remote_source.dart';
import 'package:covid_weapon/app/domain/repositories/vaccination_world_repository.dart';

class VaccinationWorldRepositoryImpl implements VaccinationWorldRepository {
  final OwidbotRemoteSource _remoteSource;
  final LocalSource _localSource;

  VaccinationWorldRepositoryImpl(
      {@required OwidbotRemoteSource remoteSource,
      @required LocalSource localSource})
      : _remoteSource = remoteSource,
        _localSource = localSource;

  @override
  Future<void> downloadWorldData() async {
    await _remoteSource.downloadWorldData();
  }

  @override
  Future<VaccinationWorld> getTodayWorld() async {
    return (await _localSource.getVaccinationWorld()).toDomain();
  }
}
