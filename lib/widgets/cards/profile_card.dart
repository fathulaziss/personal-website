import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/utils/app_asset.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330.h,
      height: 330.h,
      child: Stack(
        children: [
          Positioned(
            top: 30.h,
            left: 30.h,
            child: Container(
              width: 300.h,
              height: 300.h,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.primaryColor),
                borderRadius: BorderRadius.circular(15.h),
              ),
            ),
          ),
          Container(
            width: 300.h,
            height: 300.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAsset.image('img_profile.jpeg')),
              ),
              borderRadius: BorderRadius.circular(15.h),
            ),
          ),
        ],
      ),
    );
  }
}
