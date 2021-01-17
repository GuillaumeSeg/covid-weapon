import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:auto_route/auto_route.dart';
import 'package:covid_weapon/app/presentation/navigation/app_router.gr.dart';
import 'package:mobx/mobx.dart';

part 'menu_drawer_view_model.g.dart';

/// View Model for the Menu Drawer
class MenuDrawerViewModel = _MenuDrawerViewModel with _$MenuDrawerViewModel;

abstract class _MenuDrawerViewModel with Store {
  final VaccineChartViewArguments _chartViewArguments;
  final ImmunityBombViewArguments _immunityBombViewArguments;

  _MenuDrawerViewModel(
      {@required VaccineChartViewArguments chartsViewArgs,
      @required ImmunityBombViewArguments immunityViewArgs})
      : _chartViewArguments = chartsViewArgs,
        _immunityBombViewArguments = immunityViewArgs;

  //----------------------------------------------------------------------------
  // ACTIONS
  //----------------------------------------------------------------------------

  void onHomeButtonPressed(BuildContext ctx) =>
      _navigateTo(ctx, Routes.immunityBombView,
          args: _immunityBombViewArguments);

  void onVaccineChartsButtonPressed(BuildContext ctx) =>
      _navigateTo(ctx, Routes.vaccineChartView, args: _chartViewArguments);

  void onWeaponsArmoryButtonPressed(BuildContext ctx) =>
      _navigateTo(ctx, Routes.weaponsArmoryView);

  void onBuyMeACoffeeButtonPressed(BuildContext ctx) =>
      _navigateTo(ctx, Routes.buyMeACoffeeView);

  //----------------------------------------------------------------------------
  // PRIVATE METHODS
  //----------------------------------------------------------------------------

  void _navigateTo(BuildContext ctx, String route, {Object args}) {
    ExtendedNavigator.root.pop();

    final currentPath = RouteData.of(ctx)?.path;
    if (currentPath == null || currentPath != route) {
      ExtendedNavigator.root.popUntilRoot();
      if (route != Routes.immunityBombView) {
        ExtendedNavigator.root.push(route, arguments: args);
      }
    }
  }
}
