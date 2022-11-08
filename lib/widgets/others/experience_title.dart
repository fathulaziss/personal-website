import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';

class ExperienceTitle extends StatefulWidget {
  const ExperienceTitle({
    Key? key,
    required this.companyName,
    required this.onTap,
    required this.position,
  }) : super(key: key);

  final String companyName;
  final Function() onTap;
  final String position;

  @override
  State<ExperienceTitle> createState() => _ExperienceTitleState();
}

class _ExperienceTitleState extends State<ExperienceTitle> {
  TextDecoration decoration = TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '${widget.position} ',
        style: TextStyles.heeboText.copyWith(
          fontSize: 22.h,
          color: AppColor.textColor1,
        ),
        children: [
          const TextSpan(text: '@ '),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = widget.onTap,
            mouseCursor: MaterialStateMouseCursor.clickable,
            onEnter: (event) {
              setState(() {
                decoration = TextDecoration.underline;
              });
            },
            onExit: (event) {
              setState(() {
                decoration = TextDecoration.none;
              });
            },
            text: widget.companyName,
            style: TextStyles.heeboText.copyWith(
              fontSize: 22.h,
              color: AppColor.primaryColor,
              decoration: decoration,
              decorationColor: AppColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
