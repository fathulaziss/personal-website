import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/utils/app_utils.dart';

class AboutDetailDesc extends StatefulWidget {
  const AboutDetailDesc({Key? key}) : super(key: key);

  @override
  State<AboutDetailDesc> createState() => _AboutDetailDescState();
}

class _AboutDetailDescState extends State<AboutDetailDesc> {
  TextDecoration decoration = TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text:
            "Fast-forward to today, and I've got my first job as mobile application developer at information technology services and consulting company. My main focus these days is develop mobile application, and maintenance code at ",
        style: TextStyles.heeboText
            .copyWith(fontSize: 20.h, color: AppColor.textColor2),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppUtils.openLink('https://ihsansolusi.co.id/m/#home');
              },
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
            text: 'PT. Ihsan Solusi Informatika',
            style: TextStyles.heeboText.copyWith(
              fontSize: 20.h,
              color: AppColor.primaryColor,
              decoration: decoration,
              decorationColor: AppColor.primaryColor,
            ),
          ),
          const TextSpan(text: ' for various clients.'),
        ],
      ),
    );
  }
}
