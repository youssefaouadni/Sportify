import 'package:get/get.dart';
import 'package:sportify/app/modules/dailyreport/views/dailyreport_view.dart';
import 'package:sportify/app/modules/heartMonitor/views/heart_monitor_view.dart';
import 'package:sportify/app/modules/profile/views/profile_view.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxList children = [
    DailyreportView(),
    HeartMonitorView(),
    ProfileView(),
  ].obs;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  ChangeCurrentPage(int index) {
    currentIndex.value = index;
  }

}
