import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sportify/app/modules/measurement/views/measurement_view.dart';

import '../controllers/heart_monitor_controller.dart';

class HeartMonitorView extends GetView<HeartMonitorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset(
            'assets/animation/44474-beating-heart.json',
            repeat: true,
          ),
          const Center(
              child: Text(
            "Heart rate : 90 bpm",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 25),
          )),
          SizedBox(height: 30,),
          Text("Please connect device to start measuring"),
          SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Theme.of(context).iconTheme.color) ,
              onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  MeasurementView()));
          }, child: const Text("Setup device"))
        ],
      ),
    );
  }
}
