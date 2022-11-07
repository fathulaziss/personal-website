import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/buttons/text_button_custom.dart';

class ExperienceDetailOne extends StatefulWidget {
  const ExperienceDetailOne({Key? key}) : super(key: key);

  @override
  State<ExperienceDetailOne> createState() => _ExperienceDetailOneState();
}

class _ExperienceDetailOneState extends State<ExperienceDetailOne> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500.h,
      child: Row(
        children: [
          SizedBox(
            width: 200.h,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      width: 5.h,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? AppColor.primaryColor
                            : AppColor.textColor2,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(index == 0 ? 5.h : 0),
                          topRight: Radius.circular(index == 0 ? 5.h : 0),
                          bottomLeft: Radius.circular(index == 9 ? 5.h : 0),
                          bottomRight: Radius.circular(index == 9 ? 5.h : 0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 60.h,
                        child: TextButtonCustom(
                          onPressed: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          label: 'PT. Ihsan Solusi Informatika Terpadu',
                          isUseOverlayColor: true,
                          padding: EdgeInsets.symmetric(
                            vertical: 20.h,
                            horizontal: 10.h,
                          ),
                          textColor: selectedIndex == index
                              ? AppColor.primaryColor
                              : AppColor.textColor1,
                        ),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox();
              },
              itemCount: 10,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 30.h),
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20.h),
                  Text(
                    'Mobile Application Developer @ PT. Ihsan Solusi Informatika',
                    style: TextStyles.heeboText
                        .copyWith(fontSize: 22.h, color: AppColor.textColor1),
                  ),
                  verticalSpace(5.h),
                  Text(
                    'May 2018 - Present',
                    style: TextStyles.firaCodeText
                        .copyWith(fontSize: 20.h, color: AppColor.textColor2),
                  ),
                  verticalSpace(30.h),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      // physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 30.h),
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
                                  'Work with a variety of different languages, platforms, frameworks, and content management systems such as JavaScript, TypeScript, Gatsby, React, Craft, WordPress, Prismic, and Netlify',
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
          ),
          if (MediaQuery.of(context).size.width < 960)
            const SizedBox()
          else
            horizontalSpace(MediaQuery.of(context).size.width / 8),
        ],
      ),
    );
  }
}
