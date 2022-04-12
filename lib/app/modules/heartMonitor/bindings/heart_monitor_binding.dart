import 'package:get/get.dart';

import '../controllers/heart_monitor_controller.dart';

class HeartMonitorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HeartMonitorController>(
      () => HeartMonitorController(),
    );
  }
}
