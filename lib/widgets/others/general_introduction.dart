import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/utils/app_utils.dart';
import 'package:personal_website/widgets/buttons/primary_button.dart';
import 'package:personal_website/widgets/others/general_introduction_desc.dart';

class GeneralIntroduction extends StatelessWidget {
  const GeneralIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(MediaQuery.of(context).size.height / 5),
        Text(
          'Hi, my name is',
          style: TextStyles.firaCodeText.copyWith(fontSize: 20.h),
        ),
        verticalSpace(40.h),
        Text(
          'Muhamad Fathul Azis',
          style: TextStyles.heeboText.copyWith(
            fontSize: MediaQuery.of(context).size.width < 960 ? 40.h : 60.h,
            color: AppColor.textColor1,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),
        Text(
          'I build things for the mobile application',
          style: TextStyles.heeboText.copyWith(
            fontSize: MediaQuery.of(context).size.width < 960 ? 40.h : 60.h,
            color: AppColor.textColor2,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),
        verticalSpace(40.h),
        SizedBox(
          width: MediaQuery.of(context).size.width < 960
              ? double.infinity
              : MediaQuery.of(context).size.width / 2.8,
          child: const GeneralIntroductionDesc(),
        ),
        verticalSpace(40.h),
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width < 1000
                ? MediaQuery.of(context).size.width / 2
                : MediaQuery.of(context).size.width / 1.7,
          ),
          child: ButtonPrimary(
            onTap: () {
              AppUtils.openLink(
                'https://play.google.com/store/apps/dev?id=8324269179567170757',
              );
            },
            height: 60.h,
            isOutline: true,
            label: 'Check out my app!',
            color: Colors.transparent,
            outlineColor: AppColor.primaryColor,
            radius: 5.h,
          ),
        ),
        verticalSpace(MediaQuery.of(context).size.height / 4),
      ],
    );
  }
}
