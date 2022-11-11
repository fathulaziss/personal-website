import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/widgets/buttons/floating_left_button.dart';
import 'package:personal_website/widgets/buttons/floating_right_button.dart';
import 'package:personal_website/widgets/others/about.dart';
import 'package:personal_website/widgets/others/appbar_custom.dart';
import 'package:personal_website/widgets/others/contact.dart';
import 'package:personal_website/widgets/others/drawer_custom.dart';
import 'package:personal_website/widgets/others/experience.dart';
import 'package:personal_website/widgets/others/footer.dart';
import 'package:personal_website/widgets/others/general_introduction.dart';
import 'package:personal_website/widgets/others/project.dart';
import 'package:personal_website/widgets/others/project_other.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      endDrawer: const DrawerCustom(),
      appBar: const AppBarCustom(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal:
                    MediaQuery.of(context).size.width < 960 ? 50.h : 250.h,
              ),
              child: Column(
                children: const [
                  GeneralIntroduction(),
                  About(),
                  Experience(),
                  Project(),
                  ProjectOther(),
                  Contact(),
                  Footer(),
                ],
              ),
            ),
          ),
          if (MediaQuery.of(context).size.width < 960)
            const SizedBox()
          else
            const FloatingLeftButton(),
          if (MediaQuery.of(context).size.width < 960)
            const SizedBox()
          else
            const FloatingRightButton(),
        ],
      ),
    );
  }
}
