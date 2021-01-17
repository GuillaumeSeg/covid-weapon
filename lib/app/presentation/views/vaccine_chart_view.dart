import 'package:covid_weapon/app/domain/entities/vaccination_country.dart';
import 'package:covid_weapon/app/domain/entities/vaccination_entry.dart';
import 'package:covid_weapon/app/presentation/viewmodels/vaccine_chart_view_model.dart';
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
              child: Observer(
                builder: (context) {
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
                      series: _getLines(widget.vm.listCountries));
                },
              )),
        ),
      ),
    );
  }
}

// Bar Chart vertical
// Bubble things
// Stacked column chart
// percentages ...

List<StepAreaSeries<VaccinationEntry, DateTime>> _getStepAreas(
    List<VaccinationCountry> list) {
  List<StepAreaSeries<VaccinationEntry, DateTime>> lines = [];
  list.forEach((VaccinationCountry country) {
    final line = StepAreaSeries<VaccinationEntry, DateTime>(
      name: country.name,
      // Bind data source
      dataSource: country.entries,
      xValueMapper: (VaccinationEntry entry, _) => entry.date,
      yValueMapper: (VaccinationEntry entry, _) => entry.totalVaccinated,
      // Enables the tooltip for individual series
      enableTooltip: true,
    );
    lines.add(line);
  });
  return lines;
}

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