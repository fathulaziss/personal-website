import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/data/data.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/cards/profile_card.dart';

class AboutDetailTwo extends StatelessWidget {
  const AboutDetailTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileCard(),
        verticalSpace(40.h),
        SizedBox(
          width: double.infinity,
          child: Text(
            about,
            textAlign: TextAlign.left,
            style: TextStyles.heeboText
                .copyWith(fontSize: 20.h, color: AppColor.textColor2),
          ),
        ),
      ],
    );
  }
}
