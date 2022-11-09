import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/buttons/icon_button_custom.dart';
import 'package:personal_website/widgets/buttons/text_button_custom.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(MediaQuery.of(context).size.height / 6),
        Row(
          children: [
            Text(
              "Some Things I've Built",
              style: TextStyles.heeboText.copyWith(
                fontSize: MediaQuery.of(context).size.width < 960 ? 30.h : 40.h,
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
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width < 600
                ? 1
                : MediaQuery.of(context).size.width < 1100
                    ? 2
                    : 3,
            childAspectRatio:
                MediaQuery.of(context).size.width < 600 ? 2.h : 1.6.h,
            crossAxisSpacing: 20.h,
            mainAxisSpacing: 20.h,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(30.h),
              decoration: BoxDecoration(
                color: AppColor.backgroundColor2,
                borderRadius: BorderRadius.circular(20.h),
              ),
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.folder,
                        color: AppColor.primaryColor,
                        size: 50.h,
                      ),
                      IconButtonCustom(
                        icon: Icons.launch_outlined,
                        onPressed: () {},
                      )
                    ],
                  ),
                  verticalSpace(40.h),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Integrating Algolia Search with WordPress Multisite',
                            style: TextStyles.heeboText.copyWith(
                              fontSize: 20.h,
                              color: AppColor.textColor1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          verticalSpace(20.h),
                          Text(
                            'Building a custom multisite compatible WordPress plugin to build global search with Algolia',
                            style: TextStyles.heeboText.copyWith(
                              fontSize: 20.h,
                              color: AppColor.textColor2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  verticalSpace(40.h),
                  TextButtonCustom(
                    label: 'Associated with PT. Ihsan Solusi Informatika',
                    onPressed: () {},
                  ),
                ],
              ),
            );
          },
        ),
        verticalSpace(MediaQuery.of(context).size.height / 6),
      ],
    );
  }
}
