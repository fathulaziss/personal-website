import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/utils/app_utils.dart';

class GeneralIntroductionDesc extends StatefulWidget {
  const GeneralIntroductionDesc({super.key});

  @override
  State<GeneralIntroductionDesc> createState() =>
      _GeneralIntroductionDescState();
}

class _GeneralIntroductionDescState extends State<GeneralIntroductionDesc> {
  TextDecoration decoration = TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text:
            'I’m a Software Engineer with 4+ years of experience as a Flutter Developer, and currently expanding my skills in Android (Java/Kotlin) at ',
        style: TextStyles.heeboText
            .copyWith(fontSize: 20.h, color: AppColor.textColor2),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppUtils.openLink('https://ebconnect.com/');
              },
            mouseCursor: WidgetStateMouseCursor.clickable,
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
            text: 'PT. EBconnection Indonesia',
            style: TextStyles.heeboText.copyWith(
              fontSize: 20.h,
              color: AppColor.primaryColor,
              decoration: decoration,
              decorationColor: AppColor.primaryColor,
            ),
          ),
          const TextSpan(text: '.'),
        ],
      ),
    );
  }
}
