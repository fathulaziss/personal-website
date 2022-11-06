import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/others/about.dart';
import 'package:personal_website/widgets/others/appbar_custom.dart';
import 'package:personal_website/widgets/others/drawer_custom.dart';
import 'package:personal_website/widgets/others/general_introduction.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      endDrawer: const DrawerCustom(),
      appBar: const AppBarCustom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width < 960 ? 50.h : 150.h,
          ),
          child: Column(
            children: [
              const GeneralIntroduction(),
              const About(),
              verticalSpace(10.h)
            ],
          ),
        ),
      ),
    );
  }
}
