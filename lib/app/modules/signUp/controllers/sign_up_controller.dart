import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxBool showIcon = false.obs;

  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController usernameTextController;
  late TextEditingController passwordTextController;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    super.onInit();
    usernameTextController = TextEditingController();
    passwordTextController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
