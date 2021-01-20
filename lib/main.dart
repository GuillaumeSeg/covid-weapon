import 'package:auto_route/auto_route.dart';
import 'package:covid_weapon/app/domain/repositories/vaccination_country_repository.dart';
import 'package:covid_weapon/app/presentation/navigation/app_main_router.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'app/domain/repositories/vaccination_world_repository.dart';
import 'app/presentation/navigation/app_router.gr.dart';
import 'core/config/colors.dart';
import 'injection_container.dart' as ic;

final sl = GetIt.instance;

Future<void> main() async {
  await ic.init();
  WidgetsFlutterBinding.ensureInitialized();

  sl<VaccinationCountryRepository>().downloadCountriesData();
  await sl<VaccinationWorldRepository>().downloadWorldData();

  runApp(CovidWeaponApp());
}

class CovidWeaponApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder(
        //initialRouteArgs: sl<ImmunityBombViewArguments>(),
        router: AppMainRouter(),
        builder: (context, extendedNav) => Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: color1,
            accentColor: color2,
            appBarTheme: AppBarTheme(
              color: backgroundColor,
            ),
            canvasColor: backgroundColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          child: extendedNav,
        ),
      ),
    );
  }
}
