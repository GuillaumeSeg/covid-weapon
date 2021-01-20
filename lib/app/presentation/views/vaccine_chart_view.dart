import 'dart:math' as math;
import 'package:covid_weapon/app/domain/entities/vaccination_country.dart';
import 'package:covid_weapon/app/domain/entities/vaccination_entry.dart';
import 'package:covid_weapon/app/presentation/viewmodels/vaccine_chart_view_model.dart';
import 'package:covid_weapon/core/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'menu_drawer.dart';

final sl = GetIt.instance;

class VaccineChartView extends StatefulWidget {
  final VaccineChartViewModel vm;

  const VaccineChartView({@required this.vm, Key key}) : super(key: key);

  @override
  _VaccineChartViewState createState() => _VaccineChartViewState();
}

class _VaccineChartViewState extends State<VaccineChartView> {
  @override
  void initState() {
    super.initState();
    widget.vm.getAllCountriesData();

    widget.vm.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<VaccineChartViewModel>.value(
      value: widget.vm,
      child: Scaffold(
        appBar: AppBar(
          title: Text('COVID WEAPON'),
        ),
        drawer: sl<MenuDrawer>(),
        body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background3.png"),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width * 2,
              child: Column(
                children: [
                  Expanded(
                    child: Observer(
                      builder: (context) {
                        switch (widget.vm.indexGraph) {
                          case 1: {
                            return _getBarChart(widget.vm.listBarChart);
                          }
                          case 2: {
                            return _getBarChartPercent(widget.vm.listPercentCountries);
                          }
                          case 3: {
                            return _getDateTimeChart(widget.vm.listCountries);
                          }
                          default: {
                            return _getBarChart(widget.vm.listBarChart);
                          }
                        }
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: widget.vm.previous,
                        child: Row(
                          children: [
                            Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Icon(
                                Icons.double_arrow_sharp,
                                color: color1,
                                size: 65,
                              ),
                            ),
                            Observer(
                              builder: (BuildContext context) {
                                if (widget.vm.indexGraph <= ActionGraph.graphDosesAdministrated.index) {
                                  return Text('Immunity bomb');
                                } else {
                                  return Text('Previous');
                                }
                              }),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.vm.next,
                        child: Row(
                          children: [
                            Observer(
                                builder: (BuildContext context) {
                                  if (widget.vm.indexGraph >= ActionGraph.graphEvolutionDoses.index) {
                                    return Text('Weapons');
                                  } else {
                                    return Text('Next');
                                  }
                                }),
                            Icon(
                              Icons.double_arrow_sharp,
                              color: color1,
                              size: 65,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}

// double bar chart with immunity collective.
// Bubble things
// Stacked column chart

List<StepLineSeries<VaccinationEntry, DateTime>> _getStepLines(
    List<VaccinationCountry> list) {
  List<StepLineSeries<VaccinationEntry, DateTime>> lines = [];
  list.forEach((VaccinationCountry country) {
    final line = StepLineSeries<VaccinationEntry, DateTime>(
      name: country.name,
      // Bind data source
      dataSource: country.entries,
      xValueMapper: (VaccinationEntry entry, _) => entry.date,
      yValueMapper: (VaccinationEntry entry, _) => entry.totalVaccinated,
      // Enables the tooltip for individual series
      enableTooltip: true,
      // Render the data label but too many labels.. it's not readable.
      //dataLabelSettings: DataLabelSettings(isVisible : true),
    );
    lines.add(line);
  });
  return lines;
}

/// - DATE TIME CHART -

SfCartesianChart _getDateTimeChart(List<VaccinationCountry> list) {
  return SfCartesianChart(
      title: ChartTitle(
          text: 'Surgical strikes per country :',
          // Aligns the chart title to left
          alignment: ChartAlignment.near,
          textStyle: TextStyle(
            color: Colors.red,
            fontFamily: 'Roboto',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          )),

      // Initialize time axis
      primaryXAxis: DateTimeAxis(
        visibleMinimum: DateTime(2020, 12, 14),
        visibleMaximum: DateTime(2021, 01, 14),
        intervalType: DateTimeIntervalType.days,
      ),
      primaryYAxis: NumericAxis(),
      zoomPanBehavior: ZoomPanBehavior(
        enablePanning: true,
        enableDoubleTapZooming: true,
        enablePinching: true,
      ),
      trackballBehavior: TrackballBehavior(
        // Enables the trackball
        enable: true,
        shouldAlwaysShow: false,
        activationMode: ActivationMode.singleTap,
        builder: (BuildContext context, TrackballDetails trackballDetails) {
          try {
            return Text(
                ' ${trackballDetails?.series?.name}: ${trackballDetails.point.y}');
          } on Exception {
            return Text('');
          }
        },
      ),
      series: _getLines(list));
}

List<LineSeries<VaccinationEntry, DateTime>> _getLines(
    List<VaccinationCountry> list) {
  List<LineSeries<VaccinationEntry, DateTime>> lines = [];
  list.forEach((VaccinationCountry country) {
    final line = LineSeries<VaccinationEntry, DateTime>(
      name: country.name,
      // Bind data source
      dataSource: country.entries,
      xValueMapper: (VaccinationEntry entry, _) => entry.date,
      yValueMapper: (VaccinationEntry entry, _) => entry.totalVaccinated,
      // Enables the tooltip for individual series
      enableTooltip: true,
      // Render the data label but too many labels.. it's not readable.
      //dataLabelSettings: DataLabelSettings(isVisible : true),
    );
    lines.add(line);
  });
  return lines;
}

/// - BAR CHART -

SfCartesianChart _getBarChart(List<BarChartDataCountry> list) {
  return SfCartesianChart(
    title: ChartTitle(
      text: 'Surgical strikes per country : (total vaccinated)',
      // Aligns the chart title to left
      alignment: ChartAlignment.near,
      textStyle: TextStyle(
        color: Colors.red,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    ),
    // Init axis
    isTransposed: false,
    primaryXAxis: CategoryAxis(),
    primaryYAxis: NumericAxis(),
    zoomPanBehavior: ZoomPanBehavior(
      enablePanning: true,
      enableDoubleTapZooming: true,
      enablePinching: true,
    ),
    series: <ChartSeries>[_getBarLines(list)],
  );
}

BarSeries<BarChartDataCountry, String> _getBarLines(
    List<BarChartDataCountry> list) {
  BarSeries<BarChartDataCountry, String> lines =
      BarSeries<BarChartDataCountry, String>(
    width: 0.7, // Width of the bars
    spacing: 0.1, // Spacing between the bars
    color: color2,
    // Bind data source
    dataSource: list,
    xValueMapper: (BarChartDataCountry entry, _) => entry.name,
    yValueMapper: (BarChartDataCountry entry, _) => entry.totalVaccinated,
    // Enables the tooltip for individual series
    enableTooltip: true,
    // Render the data label but too many labels.. it's not readable.
    dataLabelSettings: DataLabelSettings(isVisible: true),
  );

  return lines;
}

/// - BAR CHART PERCENT -

SfCartesianChart _getBarChartPercent(List<VaccinationCountry> list) {
  return SfCartesianChart(
    title: ChartTitle(
      text: 'Surgical strikes by country : (per 100 people)',
      // Aligns the chart title to left
      alignment: ChartAlignment.near,
      textStyle: TextStyle(
        color: Colors.red,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    ),
    // Init axis
    isTransposed: false,
    primaryXAxis: CategoryAxis(
      visibleMinimum: 8.0,
    ),
    primaryYAxis: NumericAxis(
      visibleMinimum: 0.0,
      visibleMaximum: 20.0,
    ),
    zoomPanBehavior: ZoomPanBehavior(
      enablePanning: true,
      enableDoubleTapZooming: true,
      enablePinching: true,
    ),
    series: <ChartSeries>[_getBarLinesPercent(list)],
  );
}

BarSeries<VaccinationCountry, String> _getBarLinesPercent(
    List<VaccinationCountry> list) {
  BarSeries<VaccinationCountry, String> lines =
      BarSeries<VaccinationCountry, String>(
    width: 0.7, // Width of the bars
    spacing: 0.1, // Spacing between the bars
    color: color2,
    // Bind data source
    dataSource: list,
    xValueMapper: (VaccinationCountry entry, _) => entry.name,
    yValueMapper: (VaccinationCountry entry, _) => entry.percentVaccination,
    // Enables the tooltip for individual series
    enableTooltip: true,
    // Render the data label but too many labels.. it's not readable.
    dataLabelSettings: DataLabelSettings(isVisible: true),
  );

  return lines;
}

/*
DropdownButton(
items: [
DropdownMenuItem(
child: Row(
children: <Widget>[
Checkbox(
onChanged: (bool value) {},
value: true,
),
Text('France'),
],
),
),
DropdownMenuItem(
child: Row(
children: <Widget>[
Checkbox(
onChanged: (bool value) {},
value: false,
),
Text('Germany'),
],
),
)
],
onChanged: (value) {},
hint: Text('Select value'),
),*/
