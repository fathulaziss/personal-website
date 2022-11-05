// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/utils/app_asset.dart';
import 'package:personal_website/widgets/buttons/primary_button.dart';
import 'package:personal_website/widgets/buttons/text_button_custom.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight * 2);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leadingWidth: 110.h,
      toolbarHeight: kToolbarHeight * 2,
      leading: Container(
        margin: EdgeInsets.only(left: 40.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAsset.image('img_profile.jpeg')),
          ),
          shape: BoxShape.circle,
        ),
      ),
      actions: MediaQuery.of(context).size.width < 960
          ? [
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.menu_outlined,
                  color: AppColor.primaryColor,
                ),
              ),
              horizontalSpace(40.h)
            ]
          : [
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
                width: 90.h,
                isOutline: true,
                label: 'Resume',
                color: Colors.transparent,
                outlineColor: AppColor.primaryColor,
                radius: 5.h,
              ),
              horizontalSpace(40.h)
            ],
    );
  }
}