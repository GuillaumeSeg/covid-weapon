import 'package:covid_weapon/app/presentation/font_icon_icons.dart';
import 'package:covid_weapon/app/presentation/viewmodels/weapons_armory_view_model.dart';
import 'package:covid_weapon/core/config/colors.dart';
import 'package:covid_weapon/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../injection_container.dart';
import 'menu_drawer.dart';

class WeaponsArmoryView extends StatefulWidget {
  final WeaponsArmoryViewModel vm;

  WeaponsArmoryView({@required this.vm});

  @override
  _WeaponsArmoryViewState createState() => _WeaponsArmoryViewState();
}

class _WeaponsArmoryViewState extends State<WeaponsArmoryView> {
  @override
  void initState() {
    super.initState();
    widget.vm.getVaccineInfos();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<WeaponsArmoryViewModel>.value(
      value: widget.vm,
      child: Scaffold(
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
          child: Observer(
            builder: (BuildContext context) {
              return ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                itemCount: widget.vm.listVaccines.length,
                itemBuilder: (BuildContext context, int index) {
                  if (widget.vm.listVaccines.isNotEmpty) {
                    final item = widget.vm.listVaccines[index];
                    return Card(
                      color: Colors.transparent,
                      elevation: 10,
                      child: GestureDetector(
                        onTap: () => Utils.launchURL(item.url),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.indigo.withOpacity(0.35),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 10),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: _getStatusWidget(item.status),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: index != (widget.vm.listVaccines.length-1) ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'name : ${item.name}',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('manufacturer : ${item.manufacturer}'),
                                    Text('type : ${item.type}'),
                                    Text('from : ${item.origin}'),
                                    Row(
                                      children: [
                                        Text('efficiency : '),
                                        Text(
                                          item.efficiency,
                                          style: TextStyle(
                                              color: color1,
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline),
                                        )
                                      ],
                                    ),
                                    Text('conservation : ${item.conservation}'),
                                    Text('doses to be injected : ${item.doses}'),
                                  ],
                                ) : Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    Text(
                                      'Other weapon candidates : ${item.name}',
                                      textAlign: TextAlign.center,
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],

                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Card(
                      elevation: 10,
                      child: Container(
                        height: 50,
                        color: Colors.indigo,
                        child: Center(child: Text('name : ')),
                      ),
                    );
                  }
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Divider(),
                      Align(
                          alignment: Alignment.center,
                          child: Icon(
                            (index % 2 == 0) ? FontIcon.vaccine : Icons.coronavirus_sharp,
                            size: 30,
                          )),
                      Divider(),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Column _getStatusWidget(String status) {
    if (status == 'authorized (EU)') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            Icons.approval,
            color: Colors.green.shade800,
          ),
          Text(
            status,
            style: TextStyle(color: Colors.green.shade800),
          ),
        ],
      );
    } else if (status == 'pending (EU)') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            Icons.pending_actions_sharp,
            color: Colors.orange.shade700,
          ),
          Text(
            status,
            style: TextStyle(color: Colors.orange.shade700),
          ),
        ],
      );
    } else if (status == 'on hold') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            Icons.close_sharp,
            color: Colors.red.shade900,
          ),
          Text(
            status,
            style: TextStyle(color: Colors.red.shade900),
          ),
        ],
      );
    } else {
      return Column();
    }
  }

  Alignment _getAlignment(int index) {
    if (index % 3 == 0) {
      return Alignment.centerRight;
    } else {
      return Alignment.center;
    }
  }
}
