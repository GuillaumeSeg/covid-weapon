import 'package:covid_weapon/app/presentation/viewmodels/menu_drawer_view_model.dart';
import 'package:covid_weapon/core/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../font_icon_icons.dart';

class MenuDrawer extends StatelessWidget {
  final MenuDrawerViewModel vm;

  const MenuDrawer({
    @required this.vm,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<MenuDrawerViewModel>.value(
      value: vm,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: color4,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    child: Text(
                      'Covid Strategy',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    child: Icon(Icons.coronavirus_sharp),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    width: 10,
                    height: 10,
                    child: Icon(
                      Icons.coronavirus_outlined,
                      size: 10,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 100,
                    child: Icon(Icons.coronavirus_outlined),
                  ),
                  Positioned(
                    top: 15,
                    left: 90,
                    child: Icon(Icons.coronavirus_rounded),
                  ),
                  Positioned(
                    top: 60,
                    left: 120,
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.coronavirus_sharp,
                      size: 50,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 180,
                    width: 60,
                    height: 60,
                    child: Icon(
                      Icons.coronavirus_outlined,
                      size: 80,
                    ),
                  ),
                ],
              ),

            ),
            ListTile(
              leading: Icon(
                Icons.home_sharp,
                size: 35,
              ),
              title: Text(
                'Immunity bomb',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(Icons.arrow_right_sharp),
              onTap: () => vm.onHomeButtonPressed(context),
            ),
            Divider(color: whitec, thickness: 0.3,),
            ListTile(
                leading: Icon(
                  Icons.bar_chart_sharp,
                  size: 35,
                ),
                title: Text(
                  'Surgical strike of the vaccine',
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_right_sharp),
                onTap: () => vm.onVaccineChartsButtonPressed(context)),
            Divider(color: whitec, thickness: 0.3,),
            ListTile(
              leading: Icon(
                FontIcon.vaccine,
                size: 32,
              ),
              title: Text(
                'Weapons armory',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(Icons.arrow_right_sharp),
              onTap: () => vm.onWeaponsArmoryButtonPressed(context),
            ),
            Divider(color: whitec, thickness: 0.3,),
            ListTile(
              leading: Icon(Icons.local_cafe_sharp, size: 35),
              title: Text(
                'Buy me a coffee',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(Icons.arrow_right_sharp),
              onTap: () => vm.onBuyMeACoffeeButtonPressed(context),
            ),
          ],
        ),
      ),
    );
  }
}
