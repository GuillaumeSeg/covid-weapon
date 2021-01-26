// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../viewmodels/immunity_bomb_view_model.dart';
import '../viewmodels/vaccine_chart_view_model.dart';
import '../viewmodels/weapons_armory_view_model.dart';
import '../views/buy_me_a_coffee_view.dart';
import '../views/immunity_bomb_view.dart';
import '../views/vaccine_chart_view.dart';
import '../views/weapons_armory_view.dart';

class Routes {
  static const String immunityBombView = '/';
  static const String vaccineChartView = '/vaccine-chart-view';
  static const String weaponsArmoryView = '/weapons-armory-view';
  static const String buyMeACoffeeView = '/buy-me-acoffee-view';
  static const all = <String>{
    immunityBombView,
    vaccineChartView,
    weaponsArmoryView,
    buyMeACoffeeView,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.immunityBombView, page: ImmunityBombView),
    RouteDef(Routes.vaccineChartView, page: VaccineChartView),
    RouteDef(Routes.weaponsArmoryView, page: WeaponsArmoryView),
    RouteDef(Routes.buyMeACoffeeView, page: BuyMeACoffeeView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ImmunityBombView: (data) {
      final args = data.getArgs<ImmunityBombViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ImmunityBombView(
          vm: args.vm,
          key: args.key,
        ),
        settings: data,
      );
    },
    VaccineChartView: (data) {
      final args = data.getArgs<VaccineChartViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => VaccineChartView(
          vm: args.vm,
          key: args.key,
        ),
        settings: data,
      );
    },
    WeaponsArmoryView: (data) {
      final args = data.getArgs<WeaponsArmoryViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => WeaponsArmoryView(vm: args.vm),
        settings: data,
      );
    },
    BuyMeACoffeeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BuyMeACoffeeView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ImmunityBombView arguments holder class
class ImmunityBombViewArguments {
  final ImmunityBombViewModel vm;
  final Key key;
  ImmunityBombViewArguments({@required this.vm, this.key});
}

/// VaccineChartView arguments holder class
class VaccineChartViewArguments {
  final VaccineChartViewModel vm;
  final Key key;
  VaccineChartViewArguments({@required this.vm, this.key});
}

/// WeaponsArmoryView arguments holder class
class WeaponsArmoryViewArguments {
  final WeaponsArmoryViewModel vm;
  WeaponsArmoryViewArguments({@required this.vm});
}
