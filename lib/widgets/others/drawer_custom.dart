import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/buttons/primary_button.dart';
import 'package:personal_website/widgets/buttons/text_button_custom.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButtonCustom(
            label: 'About',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          verticalSpace(40.h),
          TextButtonCustom(
            label: 'Experience',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          verticalSpace(40.h),
          TextButtonCustom(
            label: 'Work',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          verticalSpace(40.h),
          TextButtonCustom(
            label: 'Contact',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          verticalSpace(40.h),
          ButtonPrimary(
            onTap: () {
              Navigator.pop(context);
            },
            width: 90.h,
            isOutline: true,
            label: 'Resume',
            color: Colors.transparent,
            outlineColor: AppColor.primaryColor,
            radius: 5.h,
          ),
          verticalSpace(40.h),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close, color: AppColor.primaryColor),
          )
        ],
      ),
    );
  }
}
