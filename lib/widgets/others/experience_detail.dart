import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/data/data.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/widgets/others/experience_detail_desc.dart';
import 'package:personal_website/widgets/others/experience_detail_title.dart';

class ExperienceDetail extends StatefulWidget {
  const ExperienceDetail({Key? key}) : super(key: key);

  @override
  State<ExperienceDetail> createState() => _ExperienceDetailState();
}

class _ExperienceDetailState extends State<ExperienceDetail> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400.h,
      child: Row(
        children: [
          SizedBox(
            width: 200.h,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listExperience.length,
              separatorBuilder: (context, index) => const SizedBox(),
              itemBuilder: (context, index) {
                return ExperienceDetailTitle(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  selectedIndex: selectedIndex,
                  index: index,
                );
              },
            ),
          ),
          ExperienceDetailDesc(selectedIndex: selectedIndex),
          if (MediaQuery.of(context).size.width < 960)
            const SizedBox()
          else
            horizontalSpace(MediaQuery.of(context).size.width / 8),
        ],
      ),
    );
  }
}
