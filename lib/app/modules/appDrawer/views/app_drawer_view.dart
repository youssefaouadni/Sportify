import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/app_drawer_controller.dart';

class AppDrawerView extends GetView<AppDrawerController> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  AppDrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                    ),
                currentAccountPicture: CachedNetworkImage(
                  //placeholder: placeholderWidgetFn() as Widget Function(BuildContext, String)?,
                  imageUrl:
                  'https://miro.medium.com/max/2048/0*0fClPmIScV5pTLoE.jpg',
                  fit: BoxFit.cover,
                ).cornerRadiusWithClipRRect(100),
                accountName: const Text('john Doe',style: TextStyle(color:Colors.black),),

                accountEmail: const Text('johndoe@gmail.com',style: TextStyle(color:Colors.black)),
              ),
              SizedBox(
                  height: Get.height * 0.5,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "account",
                          style: secondaryTextStyle(),
                        ),
                        leading: const Padding(
                          padding: EdgeInsets.only(left: 13.0),
                          child: Icon(Icons.account_circle),
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Text(
                          "Settings",
                          style: secondaryTextStyle(),
                        ),
                        leading: const Padding(
                          padding: EdgeInsets.only(left: 13.0),
                          child: Icon(Icons.settings),
                        ),
                        onTap: () {
                          Get.toNamed('/settings');
                        },
                      ),
                      ListTile(
                        title: Text(
                          "Log out",
                          style: secondaryTextStyle(),
                        ),
                        leading: const Padding(
                          padding: EdgeInsets.only(left: 13.0),
                          child: Icon(Icons.logout_rounded),
                        ),
                        onTap: () {

                        },
                      ),
                    ],
                  )),

            ]),

      ));
  }
}
