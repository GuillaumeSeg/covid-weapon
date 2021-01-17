import 'package:covid_weapon/app/presentation/viewmodels/immunity_bomb_view_model.dart';
import 'package:covid_weapon/app/presentation/views/menu_drawer.dart';
import 'package:covid_weapon/core/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

final sl = GetIt.instance;

class ImmunityBombView extends StatefulWidget {
  final ImmunityBombViewModel vm;

  const ImmunityBombView({@required this.vm, Key key}) : super(key: key);

  @override
  _ImmunityBombViewState createState() => _ImmunityBombViewState();
}

class _ImmunityBombViewState extends State<ImmunityBombView> {
  @override
  void initState() {
    super.initState();
    widget.vm.getTodayVaccination();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<ImmunityBombViewModel>.value(
      value: widget.vm,
      child: Scaffold(
        appBar: AppBar(
          title: Text('COVID WEAPON'),
        ),
        drawer: sl<MenuDrawer>(),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background-slice1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 5.0, right: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Observer(
                    builder: (context) {
                      return SfRadialGauge(
                        title: GaugeTitle(
                          text: 'IMMUNITY BOMB\nloading...\n',
                          textStyle: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: whitec,
                          ),
                          alignment: GaugeAlignment.center,
                        ),
                        enableLoadingAnimation: true,
                        animationDuration: 5000,
                        axes: <RadialAxis>[
                          RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            radiusFactor: 0.95,
                            maximumLabels: 15,
                            interval: 10,
                            labelFormat: '{value}%',
                            axisLabelStyle: GaugeTextStyle(fontSize: 15),
                            pointers: <GaugePointer>[
                              NeedlePointer(
                                value: widget.vm.totalPeopleVaccinatedPercent,
                                knobStyle: KnobStyle(knobRadius: 0.11, color: whitec),
                                needleLength: 0.70,
                                enableAnimation: true,
                                needleColor: whitec,
                                animationType: AnimationType.bounceOut,
                                animationDuration: 5000,
                              ),
                              MarkerPointer(
                                value: widget.vm.totalPeopleVaccinatedPercent,
                                markerWidth: 10,
                                markerHeight: 15,
                                markerOffset: -18,
                                color: whitec,
                                enableAnimation: true,
                                animationType: AnimationType.bounceOut,
                                animationDuration: 5000,
                              )
                            ],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  widget: Container(
                                      child: Text(
                                    '${widget.vm.totalPeopleVaccinatedPercent}%',
                                    style: TextStyle(
                                        fontSize: 34,
                                        color: color2,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  angle: 90,
                                  positionFactor: 0.5)
                            ],
                            ranges: <GaugeRange>[
                              GaugeRange(
                                  startValue: 85,
                                  endValue: 100,
                                  color: Colors.green.shade800,
                                  startWidth: 10,
                                  endWidth: 10),
                              GaugeRange(
                                  startValue: 70,
                                  endValue: 85,
                                  color: Colors.green.shade600,
                                  startWidth: 10,
                                  endWidth: 10),
                              GaugeRange(
                                  startValue: 52.5,
                                  endValue: 70,
                                  color: Colors.orange.shade700,
                                  startWidth: 10,
                                  endWidth: 10),
                              GaugeRange(
                                  startValue: 35,
                                  endValue: 52.5,
                                  color: Colors.orange.shade900,
                                  startWidth: 10,
                                  endWidth: 10),
                              GaugeRange(
                                  startValue: 17.5,
                                  endValue: 35,
                                  color: Colors.red.shade600,
                                  startWidth: 10,
                                  endWidth: 10),
                              GaugeRange(
                                  startValue: 0,
                                  endValue: 17.5,
                                  color: Colors.red.shade900,
                                  startWidth: 10,
                                  endWidth: 10),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Observer(
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Today's total vaccinations (${widget.vm.dateVaccinatedFormated})",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    );
                  },
                ),
                Observer(
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                            text: widget.vm.totalPeopleVaccinated,
                            style: Theme.of(context).textTheme.bodyText2.copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: color2),
                            children: [
                              TextSpan(
                                text: ' people vaccinated',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(fontSize: 20),
                              )
                            ]),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: widget.vm.onBarChartButtonPressed,
          // Icons.addchart_sharp
          // Icons.analytics_outlined / sharp
          // Icons.assignment
          // Icons.bar_chart_sharp
          icon: Icon(
            Icons.bar_chart_sharp,
            size: 46,
          ),
          label: Text('Graphs'),
          elevation: 9,
          backgroundColor: color1,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
            bottomLeft: Radius.circular(16.0),
          )),
        ),
      ),
    );
  }
}
