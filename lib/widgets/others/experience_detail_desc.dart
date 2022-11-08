import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/data/data.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/utils/app_utils.dart';
import 'package:personal_website/widgets/others/experience_title.dart';

class ExperienceDetailDesc extends StatelessWidget {
  const ExperienceDetailDesc({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20.h),
            ExperienceTitle(
              companyName: listExperience[selectedIndex].companyName,
              onTap: () {
                AppUtils.openLink(listExperience[selectedIndex].companyLink);
              },
              position: listExperience[selectedIndex].position,
            ),
            verticalSpace(5.h),
            Text(
              listExperience[selectedIndex].duration,
              style: TextStyles.firaCodeText
                  .copyWith(fontSize: 18.h, color: AppColor.textColor2),
            ),
            verticalSpace(30.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: listExperience[selectedIndex].experiences.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: Row(
                      children: [
                        Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: AppColor.primaryColor,
                          size: 20.h,
                        ),
                        horizontalSpace(15.h),
                        Expanded(
                          child: Text(
                            listExperience[selectedIndex].experiences[index],
                            style: TextStyles.heeboText.copyWith(
                              fontSize: 20.h,
                              color: AppColor.textColor2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
