import 'package:covid_weapon/app/domain/entities/vaccine.dart';

import 'repository.dart';

abstract class VaccineRepository implements Repository {

  Future<List<Vaccine>> getVaccineInfo();

}