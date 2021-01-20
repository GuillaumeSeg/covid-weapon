import 'package:auto_route/auto_route.dart';
import 'package:covid_weapon/app/domain/repositories/vaccination_world_repository.dart';
import 'package:covid_weapon/app/presentation/navigation/app_router.gr.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:mobx/mobx.dart';

part 'immunity_bomb_view_model.g.dart';

/// View Model for the Immunity Bomb view
class ImmunityBombViewModel = _ImmunityBombViewModel
    with _$ImmunityBombViewModel;

abstract class _ImmunityBombViewModel with Store {
  final VaccinationWorldRepository _repository;

  _ImmunityBombViewModel({@required VaccinationWorldRepository repository})
      : _repository = repository;

  //----------------------------------------------------------------------------
  // OBSERVABLE PROPERTIES AND GETTERS
  //----------------------------------------------------------------------------

  @observable
  int _totalPeopleVaccinated = 0;

  @computed
  String get totalPeopleVaccinated {
    final fo = NumberFormat("###,###,###,###", "en_US");
    return fo.format(_totalPeopleVaccinated);
  }

  @observable
  double _totalPeopleVaccinatedPercent = 0.0;

  @computed
  double get totalPeopleVaccinatedPercent => _totalPeopleVaccinatedPercent;

  @observable
  DateTime _dateVaccinated = DateTime(2021);

  @computed
  String get dateVaccinatedFormated {
    final DateFormat formatter = DateFormat('dd MMM yyyy');
    return formatter.format(_dateVaccinated);
  }

  //----------------------------------------------------------------------------
  // ACTIONS
  //----------------------------------------------------------------------------

  void getTodayVaccination() async {
    final data = await _repository.getTodayWorld();
    _totalPeopleVaccinated = data.total;
    _totalPeopleVaccinatedPercent = data.totalPercent;
    _dateVaccinated = data.date;
  }

  void onBarChartButtonPressed() {
    ExtendedNavigator.root.push(Routes.vaccineChartView);
  }
}
