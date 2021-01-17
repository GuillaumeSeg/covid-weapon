import 'package:auto_route/auto_route_annotations.dart';
import 'package:covid_weapon/app/presentation/views/buy_me_a_coffee_view.dart';
import 'package:covid_weapon/app/presentation/views/immunity_bomb_view.dart';
import 'package:covid_weapon/app/presentation/views/vaccine_chart_view.dart';
import 'package:covid_weapon/app/presentation/views/weapons_armory_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: ImmunityBombView, initial: true),
    MaterialRoute(page: VaccineChartView),
    MaterialRoute(page: WeaponsArmoryView),
    MaterialRoute(page: BuyMeACoffeeView),
  ],
)
class $AppRouter {}
