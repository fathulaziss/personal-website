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
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final itemScrollController = ItemScrollController();

  List<Widget> contents = const [
    GeneralIntroduction(),
    About(),
    Experience(),
    Project(),
    ProjectOther(),
    Contact(),
    Footer(),
  ];

  Future<void> contentNavigation(int index) async {
    await itemScrollController.scrollTo(
      index: index,
      curve: Curves.ease,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      endDrawer: DrawerCustom(
        onPressedAbout: () {
          contentNavigation(1);
        },
        onPressedContact: () {
          contentNavigation(5);
        },
        onPressedExperience: () {
          contentNavigation(2);
        },
        onPressedWork: () {
          contentNavigation(3);
        },
      ),
      appBar: AppBarCustom(
        onPressedAbout: () {
          contentNavigation(1);
        },
        onPressedContact: () {
          contentNavigation(5);
        },
        onPressedExperience: () {
          contentNavigation(2);
        },
        onPressedWork: () {
          contentNavigation(3);
        },
      ),
      body: Stack(
        children: [
          ScrollablePositionedList.builder(
            padding: EdgeInsets.symmetric(
              horizontal:
                  MediaQuery.of(context).size.width < 960 ? 50.h : 250.h,
            ),
            itemScrollController: itemScrollController,
            itemCount: contents.length,
            itemBuilder: (context, index) {
              return contents[index];
            },
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
