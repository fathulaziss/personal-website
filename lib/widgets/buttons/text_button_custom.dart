import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';

class TextButtonCustom extends StatefulWidget {
  const TextButtonCustom({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final Function() onPressed;

  @override
  State<TextButtonCustom> createState() => _TextButtonCustomState();
}

class _TextButtonCustomState extends State<TextButtonCustom> {
  Color color = AppColor.textColor1;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      onHover: (value) {
        setState(() {
          if (value == true) {
            color = AppColor.primaryColor;
          } else {
            color = AppColor.textColor1;
          }
        });
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size(18.h, 18.h),
        primary: Colors.transparent,
        backgroundColor: Colors.transparent,
        onSurface: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      child: Text(
        widget.label,
        style: TextStyles.firaCodeText.copyWith(color: color),
      ),
    );
  }
}
