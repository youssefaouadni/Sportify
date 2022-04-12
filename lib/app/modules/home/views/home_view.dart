import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportify/app/modules/dailyreport/controllers/dailyreport_controller.dart';
import '../../appDrawer/views/app_drawer_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  DailyreportController dailyreportController = Get.put(DailyreportController());

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawerView(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Sportify',
          style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).iconTheme.color,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.share,
                size: 26.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
                child: InkWell(
                  onTap: () {
                    Get.toNamed('/login');
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/ic_user.png'),
                  ),
                )),
          )
        ],
      ),
      body: Obx(() => controller.children[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            onTap: controller.ChangeCurrentPage,
            currentIndex: controller.currentIndex.value,
            selectedIconTheme: Theme.of(context).iconTheme,
            selectedItemColor: Theme.of(context).iconTheme.color,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.file_copy_outlined), label: "Weekly report "),
              BottomNavigationBarItem(
                  icon: Icon(Icons.monitor_heart), label: "Heart rate"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: "Profile"),
            ],
          )),
    );
  }
}
