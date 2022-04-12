import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

import 'package:get/get.dart';

import '../controllers/measurement_controller.dart';
import 'bluetooth_off_screen.dart';
import 'find_devices_screen.dart';

class MeasurementView extends GetView<MeasurementController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<BluetoothState>(
          stream: FlutterBlue.instance.state,
          initialData: BluetoothState.unknown,
          builder: (c, snapshot) {
            final state = snapshot.data;
            if (state == BluetoothState.on) {
              return FindDevicesScreen();
            }
            return BluetoothOffScreen(state: state);
          }),
    );
  }
}
