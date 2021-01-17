import 'package:flutter/material.dart';

import '../../../injection_container.dart';
import 'menu_drawer.dart';

class WeaponsArmoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID WEAPON'),
      ),
      drawer: sl<MenuDrawer>(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background-slice2.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
