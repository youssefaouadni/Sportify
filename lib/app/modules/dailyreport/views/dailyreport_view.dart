import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../controllers/dailyreport_controller.dart';

class DailyreportView extends GetView<DailyreportController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    // Chart title
                    title: ChartTitle(text: 'Weekly heart report'),
                    // Enable legend
                    legend: Legend(isVisible: true),
                    // Enable tooltip
                    tooltipBehavior: controller.tooltipBehavior,
                    series: <LineSeries<HeartData, String>>[
          LineSeries<HeartData, String>(
              dataSource: <HeartData>[
                HeartData('Mon', 35),
                HeartData('Tue', 28),
                HeartData('Wed', 34),
                HeartData('Thu', 32),
                HeartData('Fri', 40),
                HeartData('Sat', 40),
                HeartData('Sun', 40),
              ],
              xValueMapper: (HeartData sales, _) => sales.year,
              yValueMapper: (HeartData sales, _) => sales.sales,
              // Enable data label
              dataLabelSettings: DataLabelSettings(isVisible: true))
        ]))));
  }
}

class HeartData {
  HeartData(this.year, this.sales);
  final String year;
  final double sales;
}
