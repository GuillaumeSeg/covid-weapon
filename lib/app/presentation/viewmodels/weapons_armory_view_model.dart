import 'package:covid_weapon/app/domain/entities/vaccine.dart';
import 'package:meta/meta.dart';

import 'package:covid_weapon/app/domain/repositories/vaccine_repository.dart';
import 'package:mobx/mobx.dart';

part 'weapons_armory_view_model.g.dart';

/// View Model for the Weapon Armory view
class WeaponsArmoryViewModel = _WeaponsArmoryViewModel
    with _$WeaponsArmoryViewModel;

abstract class _WeaponsArmoryViewModel with Store {
  final VaccineRepository _repository;

  _WeaponsArmoryViewModel({@required VaccineRepository vaccineRepository})
      : _repository = vaccineRepository;

  //----------------------------------------------------------------------------
  // OBSERVABLE PROPERTIES AND GETTERS
  //----------------------------------------------------------------------------

  @observable
  List<Vaccine> _listVaccines = [];

  @computed
  List<Vaccine> get listVaccines => _listVaccines;

  //----------------------------------------------------------------------------
  // ACTIONS
  //----------------------------------------------------------------------------

  void getVaccineInfos() async {
    final list = await _repository.getVaccineInfo();
    if (list != null && list.isNotEmpty) {
      _listVaccines = list;
    }
  }
}
