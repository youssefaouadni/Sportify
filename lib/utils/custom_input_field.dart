import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'global.dart';


class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final Icon? prefixIcon;
  final FieldType? typeField;
  final TextEditingController textEditingController;
  final controller;
  final InputDecoration decoration;
  final TextStyle style;

  const CustomInputField(
      {Key? key,
        this.hintText,
         this.validator,
        this.prefixIcon,
        this.typeField,
        required this.textEditingController,
        required this.controller,
        this.decoration = const InputDecoration(),
        required this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextFormField(
        validator: validator,
        enableInteractiveSelection: true,
        keyboardType: (typeField == FieldType.phone)
            ? TextInputType.phone
            : (typeField == FieldType.email)
            ? TextInputType.emailAddress
            : TextInputType.text,
        controller: textEditingController,
        obscureText: (controller.showIcon.value == false &&
            typeField == FieldType.password)
            ? true
            : false,
        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
        decoration: StyleResources.ROUNDED_EDIT_TEXT(hintText,fieldIcon: prefixIcon)
    ));
  }
}

enum FieldType { username, password, email, phone, etab }
