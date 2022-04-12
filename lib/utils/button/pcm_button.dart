import 'package:flutter/material.dart';

class PCMButton extends StatelessWidget {
  Color? color;
  Color? textColor;
  double? elevation;
  VoidCallback? onPressed;
  double? height;
  double? width;
  ShapeBorder? shape;
  EdgeInsetsGeometry? padding;
  double? minWidth;
  TextStyle? textStyle;

  // ButtonAttributes attributes;
  String text;
  bool? hasPressedButton;
  TextStyle? style = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal);

  PCMButton(this.text,
      {this.color,
      this.textColor,
      this.hasPressedButton,
      this.elevation,
      this.width,
      this.style,
      this.onPressed,
      //     required this.attributes,
      this.padding,
      this.height,
      this.shape,
      this.minWidth,
      textStyle});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      elevation: elevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Text(
            text,
            style: style,
          )
        ],
      ),
      textColor: textColor,
      height: height,
      minWidth: minWidth ?? MediaQuery.of(context).size.width,
    );
  }
}
