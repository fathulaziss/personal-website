// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/utils/app_asset.dart';
import 'package:personal_website/utils/app_utils.dart';
import 'package:personal_website/widgets/buttons/primary_button.dart';
import 'package:personal_website/widgets/buttons/text_button_custom.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustom({
    Key? key,
    required this.onPressedAbout,
    required this.onPressedContact,
    required this.onPressedExperience,
    required this.onPressedWork,
  }) : super(key: key);

  final Function() onPressedAbout;
  final Function() onPressedExperience;
  final Function() onPressedWork;
  final Function() onPressedContact;

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight * 1.5);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leadingWidth: 100.h,
      toolbarHeight: kToolbarHeight * 1.5,
      leading: Container(
        margin: EdgeInsets.only(left: 40.h),
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(AppAsset.logo('logo_app.png'))),
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
                onPressed: widget.onPressedAbout,
              ),
              horizontalSpace(40.h),
              TextButtonCustom(
                label: 'Experience',
                onPressed: widget.onPressedExperience,
              ),
              horizontalSpace(40.h),
              TextButtonCustom(
                label: 'Work',
                onPressed: widget.onPressedWork,
              ),
              horizontalSpace(40.h),
              TextButtonCustom(
                label: 'Contact',
                onPressed: widget.onPressedContact,
              ),
              horizontalSpace(40.h),
              ButtonPrimary(
                width: 90.h,
                isOutline: true,
                label: 'Resume',
                color: Colors.transparent,
                outlineColor: AppColor.primaryColor,
                radius: 5.h,
                onTap: () {
                  AppUtils.openLink(
                    'https://drive.google.com/file/d/1b7z3FZX9OxUZ2hrb3tEFt49C1mhD2qR-/view?usp=share_link',
                  );
                },
              ),
              horizontalSpace(40.h)
            ],
    );
  }
}
