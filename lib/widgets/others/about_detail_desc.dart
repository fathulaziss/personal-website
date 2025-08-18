import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';

class AboutDetailDesc extends StatefulWidget {
  const AboutDetailDesc({super.key});

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
            'Today, I have over 4 years of experience building apps with Flutter. In addition, I’m expanding my expertise in Android development using Java/Kotlin and exploring Node.js, aiming to broaden my skills across both mobile and back-end technologies.',
        style: TextStyles.heeboText
            .copyWith(fontSize: 20.h, color: AppColor.textColor2),
        // children: [
        //   TextSpan(
        //     recognizer: TapGestureRecognizer()
        //       ..onTap = () {
        //         AppUtils.openLink('https://www.anj-group.com/en/home');
        //       },
        //     mouseCursor: WidgetStateMouseCursor.clickable,
        //     onEnter: (event) {
        //       setState(() {
        //         decoration = TextDecoration.underline;
        //       });
        //     },
        //     onExit: (event) {
        //       setState(() {
        //         decoration = TextDecoration.none;
        //       });
        //     },
        //     text: 'PT. Austindo Nusantara Jaya Tbk',
        //     style: TextStyles.heeboText.copyWith(
        //       fontSize: 20.h,
        //       color: AppColor.primaryColor,
        //       decoration: decoration,
        //       decorationColor: AppColor.primaryColor,
        //     ),
        //   ),
        //   const TextSpan(
        //     text:
        //         ', where my primary focus is now on developing mobile applications for tracking and recording farming results.',
        //   ),
        // ],
      ),
    );
  }
}
