import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/data/data.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/others/about_detail_one.dart';
import 'package:personal_website/widgets/others/about_detail_two.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width < 960
          ? EdgeInsets.zero
          : EdgeInsets.symmetric(horizontal: 100.h),
      child: Column(
        children: [
          verticalSpace(MediaQuery.of(context).size.height / 10),
          Row(
            children: [
              Text(
                'About Me',
                style: TextStyles.heeboText.copyWith(
                  fontSize:
                      MediaQuery.of(context).size.width < 960 ? 30.h : 40.h,
                  color: AppColor.textColor1,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.1,
                ),
              ),
              horizontalSpace(40.h),
              Expanded(
                child: Padding(
                  padding: MediaQuery.of(context).size.width < 960
                      ? EdgeInsets.zero
                      : EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 2.5,
                        ),
                  child: const Divider(color: AppColor.textColor1),
                ),
              ),
            ],
          ),
          verticalSpace(40.h),
          if (MediaQuery.of(context).size.width < 960)
            const AboutDetailTwo()
          else
            const AboutDetailOne(),
          verticalSpace(20.h),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...listTechnologies1.map((e) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 4.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_double_arrow_right_rounded,
                            color: AppColor.primaryColor,
                            size: 20.h,
                          ),
                          horizontalSpace(15.h),
                          Text(
                            e,
                            style: TextStyles.firaCodeText
                                .copyWith(color: AppColor.textColor2),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
              horizontalSpace(60.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...listTechnologies2.map((e) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 4.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_double_arrow_right_rounded,
                            color: AppColor.primaryColor,
                            size: 20.h,
                          ),
                          horizontalSpace(15.h),
                          Text(
                            e,
                            style: TextStyles.firaCodeText
                                .copyWith(color: AppColor.textColor2),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            ],
          ),
          verticalSpace(MediaQuery.of(context).size.height / 6),
        ],
      ),
    );
  }
}
