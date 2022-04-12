import 'package:get/get.dart';

import '../controllers/dailyreport_controller.dart';

class DailyreportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DailyreportController>(
      () => DailyreportController(),
    );
  }
}
