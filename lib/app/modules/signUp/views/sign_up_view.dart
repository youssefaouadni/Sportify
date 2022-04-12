import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/button/pcm_button.dart';
import '../../../../utils/custom_input_field.dart';
import '../../../../utils/global.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: controller.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset(
                "assets/images/heart-rate.png",
                scale: 8,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width * 0.4,
                    child: CustomInputField(
                      hintText: "Name",
                      textEditingController: controller.firstNameController,
                      controller: controller,
                      decoration:
                          StyleResources.ROUNDED_EDIT_TEXT("Nom utilisateur"),
                      style: StyleResources.EDIT_TEXT_FONT_STYLE,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.4,
                    child: CustomInputField(
                      hintText: "Name",
                      textEditingController: controller.lastNameController,
                      controller: controller,
                      decoration:
                          StyleResources.ROUNDED_EDIT_TEXT("Nom utilisateur"),
                      style: StyleResources.EDIT_TEXT_FONT_STYLE,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: CustomInputField(
                hintText: "Email",
                typeField: FieldType.username,
                textEditingController: controller.usernameTextController,
                controller: controller,
                decoration: StyleResources.ROUNDED_EDIT_TEXT("Nom utilisateur"),
                style: StyleResources.EDIT_TEXT_FONT_STYLE,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: CustomInputField(
                hintText: "Password",
                typeField: FieldType.password,
                textEditingController: controller.passwordTextController,
                controller: controller,
                decoration: StyleResources.ROUNDED_EDIT_TEXT("Nom utilisateur"),
                style: StyleResources.EDIT_TEXT_FONT_STYLE,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: CustomInputField(
                hintText: "Confirm password",
                typeField: FieldType.password,
                textEditingController: controller.passwordTextController,
                controller: controller,
                decoration: StyleResources.ROUNDED_EDIT_TEXT("Nom utilisateur"),
                style: StyleResources.EDIT_TEXT_FONT_STYLE,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: PCMButton(
                "Sign up",
                onPressed: () async {},
                color: Theme.of(context).iconTheme.color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                textColor: Colors.white,
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
