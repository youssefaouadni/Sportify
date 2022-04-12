import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DailyreportController extends GetxController {
  TooltipBehavior? tooltipBehavior;

  @override
  void onInit() {
    tooltipBehavior = TooltipBehavior(enable: true);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
