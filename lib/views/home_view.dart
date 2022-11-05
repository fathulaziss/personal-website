import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/others/appbar_custom.dart';
import 'package:personal_website/widgets/others/drawer_custom.dart';

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
            horizontal:
                MediaQuery.of(context).size.width < 960.h ? 25.h : 150.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(MediaQuery.of(context).size.height / 5),
              Text(
                'Hi, my name is',
                style: TextStyles.firaCodeText.copyWith(fontSize: 22.h),
              ),
              verticalSpace(40.h),
              Text(
                'Muhamad Fathul Azis.',
                style: TextStyles.heeboText.copyWith(
                  fontSize:
                      MediaQuery.of(context).size.width < 960.h ? 40.h : 60.h,
                  color: AppColor.textColor1,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.1,
                ),
              ),
              Text(
                'I build things for the mobile application.',
                style: TextStyles.heeboText.copyWith(
                  fontSize:
                      MediaQuery.of(context).size.width < 960.h ? 40.h : 60.h,
                  color: AppColor.textColor2,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.1,
                ),
              ),
              verticalSpace(40.h),
              SizedBox(
                width: MediaQuery.of(context).size.width < 960.h
                    ? double.infinity
                    : MediaQuery.of(context).size.width / 2.8,
                child: Text(
                  "I'm a software engineer specializing develop mobile application using Flutter. Currently, I'm focused on develop mobile application at PT. Ihsan Solusi Informatika",
                  style: TextStyles.heeboText
                      .copyWith(fontSize: 22.h, color: AppColor.textColor2),
                ),
              ),
              verticalSpace(MediaQuery.of(context).size.height / 3),
              Container(
                width: double.infinity,
                height: 50.h,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
