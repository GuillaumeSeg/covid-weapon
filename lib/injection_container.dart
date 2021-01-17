import 'package:covid_weapon/app/data/repositories/vaccination_country_repository_impl.dart';
import 'package:covid_weapon/app/data/sources/local/local_source.dart';
import 'package:covid_weapon/app/data/sources/remote/owidbot_remote_source.dart';
import 'package:covid_weapon/app/domain/repositories/vaccination_country_repository.dart';
import 'package:covid_weapon/app/domain/repositories/vaccination_world_repository.dart';
import 'package:covid_weapon/app/presentation/navigation/app_router.gr.dart';
import 'package:covid_weapon/app/presentation/viewmodels/immunity_bomb_view_model.dart';
import 'package:covid_weapon/app/presentation/viewmodels/menu_drawer_view_model.dart';
import 'package:covid_weapon/app/presentation/views/menu_drawer.dart';
import 'package:covid_weapon/core/config/owid_remote_config.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'app/data/repositories/vaccination_world_repository_impl.dart';
import 'app/presentation/viewmodels/vaccine_chart_view_model.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Dio http
  sl.registerLazySingleton<Dio>(() => Dio(OwidRemoteConfig()));

  // Remote source
  sl.registerLazySingleton<OwidbotRemoteSource>(
      () => OwidbotRemoteSource(http: sl<Dio>()));
  // Local source
  sl.registerLazySingleton<LocalSource>(() => LocalSource());

  // - REPOSITORIES
  sl.registerLazySingleton<VaccinationCountryRepository>(() =>
      VaccinationCountryRepositoryImpl(
          remoteSource: sl<OwidbotRemoteSource>(),
          localSource: sl<LocalSource>()));
  sl.registerLazySingleton<VaccinationWorldRepository>(() =>
      VaccinationWorldRepositoryImpl(
          remoteSource: sl<OwidbotRemoteSource>(),
          localSource: sl<LocalSource>()));

  // - VIEW MODELS
  sl.registerLazySingleton<MenuDrawerViewModel>(() => MenuDrawerViewModel(
      chartsViewArgs: sl<VaccineChartViewArguments>(),
      immunityViewArgs: sl<ImmunityBombViewArguments>()));
  sl.registerLazySingleton<ImmunityBombViewModel>(() => ImmunityBombViewModel(
      repository: sl<VaccinationWorldRepository>(),
      args: sl<VaccineChartViewArguments>()));
  sl.registerLazySingleton<VaccineChartViewModel>(() =>
      VaccineChartViewModel(repository: sl<VaccinationCountryRepository>()));

  // - VIEWS
  sl.registerLazySingleton<MenuDrawer>(
      () => MenuDrawer(vm: sl<MenuDrawerViewModel>()));
  // - Views arguments
  sl.registerLazySingleton<VaccineChartViewArguments>(
      () => VaccineChartViewArguments(vm: sl<VaccineChartViewModel>()));
  sl.registerLazySingleton<ImmunityBombViewArguments>(
      () => ImmunityBombViewArguments(vm: sl<ImmunityBombViewModel>()));
}
