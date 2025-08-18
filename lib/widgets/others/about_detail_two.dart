import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/cards/profile_card.dart';
import 'package:personal_website/widgets/others/about_detail_desc.dart';

class AboutDetailTwo extends StatelessWidget {
  const AboutDetailTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileCard(),
        verticalSpace(40.h),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, my name is Azis, and I specialize in mobile application development. My journey began in 2020 when I discovered Flutter during final year at university, and I chose to make it the foundation of my career. It turned out to be the perfect fit for my passion for creating impactful digital solutions.',
                style: TextStyles.heeboText
                    .copyWith(fontSize: 20.h, color: AppColor.textColor2),
              ),
              verticalSpace(20.h),
              const AboutDetailDesc(),
              verticalSpace(20.h),
              Text(
                'Beyond coding, I’m committed to continuous learning and professional growth. I stay up to date with the latest trends in software development to refine my skills and deliver high-quality solutions that make a real impact.',
                style: TextStyles.heeboText
                    .copyWith(fontSize: 20.h, color: AppColor.textColor2),
              ),
              verticalSpace(20.h),
              Text(
                "Here are a few technologies or tools I've been working with recently :",
                style: TextStyles.heeboText
                    .copyWith(fontSize: 20.h, color: AppColor.textColor2),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
