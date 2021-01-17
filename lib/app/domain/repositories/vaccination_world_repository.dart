

import 'package:covid_weapon/app/domain/entities/vaccination_world.dart';

import 'repository.dart';

abstract class VaccinationWorldRepository implements Repository {

  Future<void> downloadWorldData();

  Future<VaccinationWorld> getTodayWorld();

}