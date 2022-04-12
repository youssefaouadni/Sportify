import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/profile_controller.dart';
import '../utils/WAColors.dart';
import '../utils/WAWidgets.dart';

class ProfileView extends GetView<ProfileController> {
  var fullNameController = TextEditingController();
  var contactNumberController = TextEditingController();

  FocusNode fullNameFocusNode = FocusNode();
  FocusNode contactNumberFocusNode = FocusNode();
  List<String?> waMonthList = <String?>[
    "Jan",
    "Feb",
    "Mar",
    "April",
    "May",
    "June",
    "July",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];
  List<String?> waYearList = <String?>[
    "1991",
    "1992",
    "1993",
    "1994",
    "1995",
    "1996",
    "1997",
    "1998",
    "1999",
    "2020",
    "2021"
  ];

  ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Edit Profile',
            style: boldTextStyle(color: Colors.black, size: 20),
          ),

          centerTitle: true,
          elevation: 0.0,
          brightness: Brightness.dark,
        ),
        body: Container(
          height: Get.height,
          width: Get.width,

          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                padding: const EdgeInsets.only(
                    top: 20, left: 16, right: 16, bottom: 16),
                width: Get.width,
                height: Get.height,
                decoration: boxDecorationWithShadow(
                    backgroundColor: context.cardColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(30),
                        topRight: const Radius.circular(30))),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Personal Information',
                          style: boldTextStyle(size: 18)),
                      16.height,
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.2),
                                width: 0.5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Full Name', style: boldTextStyle(size: 14)),
                            8.height,
                            AppTextField(
                              decoration: waInputDecoration(
                                hint: 'Enter your full name here',
                              ),
                              textFieldType: TextFieldType.NAME,
                              keyboardType: TextInputType.name,
                              controller: fullNameController,
                              focus: fullNameFocusNode,
                            ),
                            16.height,
                            Text('Contact Number',
                                style: boldTextStyle(size: 14)),
                            8.height,
                            AppTextField(
                              decoration: waInputDecoration(
                                hint: 'Enter your contact number here',
                              ),
                              textFieldType: TextFieldType.PHONE,
                              keyboardType: TextInputType.phone,
                              controller: contactNumberController,
                              focus: contactNumberFocusNode,
                            ),
                            16.height,
                            Text('Date of birth',
                                style: boldTextStyle(size: 14)),
                            8.height,
                            Row(
                              children: [
                                DropdownButtonFormField(
                                  isExpanded: true,
                                  decoration: waInputDecoration(hint: "Date"),
                                  items: List.generate(31, (index) {
                                    return DropdownMenuItem(
                                        child: Text('${index + 1}',
                                            style: secondaryTextStyle()),
                                        value: index + 1);
                                  }),
                                  onChanged: (value) {},
                                ).expand(),
                                16.width,
                                DropdownButtonFormField(
                                  isExpanded: true,
                                  decoration: waInputDecoration(hint: "Month"),
                                  items: waMonthList.map((String? value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value!,
                                          style: secondaryTextStyle()),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    //
                                  },
                                ).expand(),
                                16.width,
                                DropdownButtonFormField(
                                  isExpanded: true,
                                  decoration: waInputDecoration(hint: "Year"),
                                  items: waYearList.map((String? value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value!,
                                          style: secondaryTextStyle()),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    //
                                  },
                                ).expand(),
                              ],
                            ),
                            16.height,
                            Text('Gender', style: boldTextStyle()),
                            8.height,
                            DropdownButtonFormField(
                              isExpanded: true,
                              decoration:
                                  waInputDecoration(hint: "Select your gender"),
                              items: <String>['Female', 'Male']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child:
                                      Text(value, style: secondaryTextStyle()),
                                );
                              }).toList(),
                              onChanged: (value) {
                                //
                              },
                            ),
                          ],
                        ),
                      ),
                      16.height,
                      AppButton(
                              color: Colors.redAccent,
                              width: Get.width,
                              child: Text('Continue',
                                  style: boldTextStyle(color: Colors.white)),
                              onTap: () {
                                Get.toNamed('/home');
                              })
                          .cornerRadiusWithClipRRect(30)
                          .paddingOnly(
                              left: Get.width * 0.1, right: Get.width * 0.1),
                    ],
                  ),
                ),
              ),

            ],
          ).paddingTop(60),
        ),
      ),
    );
  }
}
