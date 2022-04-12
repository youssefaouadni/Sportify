import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool loading = false.obs;
  RxBool invalidUser = false.obs;
  late TextEditingController usernameTextController;
  late TextEditingController passwordTextController;
  @override
  void onInit() {
    super.onInit();
    usernameTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
