import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/utils/app_utils.dart';
import 'package:personal_website/widgets/buttons/primary_button.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(MediaQuery.of(context).size.height / 6),
        Text(
          'Get In Touch',
          style: TextStyles.heeboText.copyWith(
            fontSize: MediaQuery.of(context).size.width < 960 ? 30.h : 40.h,
            color: AppColor.textColor1,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),
        verticalSpace(40.h),
        Padding(
          padding: MediaQuery.of(context).size.width < 1024
              ? EdgeInsets.zero
              : EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 5,
                ),
          child: Text(
            "Although currently I'm not looking for any new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
            style: TextStyles.heeboText
                .copyWith(fontSize: 20.h, color: AppColor.textColor2),
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpace(40.h),
        ButtonPrimary(
          width: 150.h,
          height: 60.h,
          isOutline: true,
          label: 'Say Hello',
          color: Colors.transparent,
          outlineColor: AppColor.primaryColor,
          radius: 5.h,
          onTap: () {
            AppUtils.launcher(
              Uri(scheme: 'mailto', path: 'azisfathl@gmail.com'),
            );
          },
        ),
        verticalSpace(MediaQuery.of(context).size.height / 6),
      ],
    );
  }
}
