import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/utils/app_asset.dart';
import 'package:personal_website/widgets/buttons/primary_button.dart';
import 'package:personal_website/widgets/buttons/text_button_custom.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leadingWidth: 100.h,
        leading: Container(
          margin: EdgeInsets.only(left: 40.h),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAsset.image('img_profile.jpeg')),
            ),
            shape: BoxShape.circle,
          ),
        ),
        actions: [
          TextButtonCustom(
            label: 'About',
            onPressed: () {},
          ),
          horizontalSpace(40.h),
          TextButtonCustom(
            label: 'Experience',
            onPressed: () {},
          ),
          horizontalSpace(40.h),
          TextButtonCustom(
            label: 'Work',
            onPressed: () {},
          ),
          horizontalSpace(40.h),
          TextButtonCustom(
            label: 'Contact',
            onPressed: () {},
          ),
          horizontalSpace(40.h),
          ButtonPrimary(
            width: 82.h,
            isOutline: true,
            label: 'Resume',
            color: Colors.transparent,
            outlineColor: AppColor.primaryColor,
            radius: 10.h,
          ),
          horizontalSpace(40.h)
        ],
        // title: const Text('Home'),
      ),
    );
  }
}
