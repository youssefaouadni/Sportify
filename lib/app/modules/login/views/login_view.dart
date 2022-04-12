import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportify/app/modules/home/bindings/home_binding.dart';
import 'package:sportify/app/modules/home/controllers/home_controller.dart';
import 'package:sportify/app/modules/home/views/home_view.dart';

import '../../../../utils/button/pcm_button.dart';
import '../../../../utils/global.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Obx(
          () => (controller.loading.value == true)
              ? Center(
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Column(
                        children: [
                          CircularProgressIndicator(
                            color: Theme.of(context).iconTheme.color,
                            strokeWidth: 2,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Login in ..."),
                        ],
                      )),
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Image.asset(
                        "assets/images/heart-rate.png",
                        scale: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    TextField(
                      obscureText: false,
                      controller: controller.usernameTextController,
                      decoration: StyleResources.ROUNDED_EDIT_TEXT("E-mail"),
                      style: StyleResources.EDIT_TEXT_FONT_STYLE,
                    ),
                    const SizedBox(height: 24),
                    TextField(
                      obscureText: true,
                      controller: controller.passwordTextController,
                      decoration: StyleResources.ROUNDED_EDIT_TEXT("Password"),
                      style: StyleResources.EDIT_TEXT_FONT_STYLE,
                    ),
                    const SizedBox(height: 16),
                    Obx(() => Visibility(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.info,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Invalid username or password",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              )),
                          visible: controller.invalidUser.value,
                        )),
                    const SizedBox(height: 16),
                    PCMButton(
                      "Login",
                      onPressed: () async {
                        Get.off(()=>HomeView(),binding: HomeBinding());
                      },
                      color: Theme.of(context).iconTheme.color,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      textColor: Colors.white,
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Not a member ?  "),
                        InkWell(
                          onTap: () {
                            Get.toNamed('/sign-up');
                          },
                          child: const Text("Create an account"),
                        )
                      ],
                    )
                  ],
                ),
        ),
      )),
    );
  }
}

const ShadowColor = Color(0x95E9EBF0);

BoxDecoration boxDecorations(
    {double radius = 8,
    Color color = Colors.transparent,
    Color bgColor = Colors.white,
    bool showShadow = true}) {
  return BoxDecoration(
      color: bgColor,
      // gradient: LinearGradient(colors: [bgColor, Colors.white]),
      boxShadow: showShadow
          ? [
              const BoxShadow(
                  color: ShadowColor, blurRadius: 10, spreadRadius: 2)
            ]
          : [const BoxShadow(color: Colors.transparent)],
      border: Border.all(color: color),
      borderRadius: BorderRadius.all(Radius.circular(radius)));
}
