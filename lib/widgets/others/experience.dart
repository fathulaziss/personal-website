import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/others/experience_detail.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width < 960
          ? EdgeInsets.zero
          : EdgeInsets.symmetric(horizontal: 100.h),
      child: Column(
        children: [
          verticalSpace(MediaQuery.of(context).size.height / 6),
          Row(
            children: [
              Text(
                "Where I've Worked",
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
                          right: MediaQuery.of(context).size.width / 3.5,
                        ),
                  child: const Divider(color: AppColor.textColor1),
                ),
              ),
            ],
          ),
          verticalSpace(40.h),
          const ExperienceDetail(),
          verticalSpace(MediaQuery.of(context).size.height / 6),
        ],
      ),
    );
  }
}
