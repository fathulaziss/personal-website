import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/data/data.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/others/project_item.dart';

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
              "Some Things I've Build",
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
          itemCount: listProject.length,
          itemBuilder: (context, index) {
            return ProjectItem(data: listProject[index]);
          },
        ),
        verticalSpace(MediaQuery.of(context).size.height / 6),
      ],
    );
  }
}
