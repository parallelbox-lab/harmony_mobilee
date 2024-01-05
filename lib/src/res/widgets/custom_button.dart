import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      this.press,
      this.color,
      this.borderColor,
      this.textColor,
      this.isLoading = false,
      this.ui,
      this.borderRadius,
      this.height,
      this.width})
      : super(key: key);
  //final String? text;
  final Function? press;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final bool? isLoading;
  final Widget? ui;
  final double? width;
  final double? height;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: const EdgeInsets.only(bottom: 5.0),
        width: width ?? double.infinity,
        height: height ?? 60.0,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: borderColor ?? Colors.black),
            borderRadius: BorderRadius.circular(borderRadius ?? 7.0)),
        child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 7.0)),
              backgroundColor: color ?? Colors.black,
            ),
            onPressed: press as void Function()?,
            child: ui!));
  }
}
