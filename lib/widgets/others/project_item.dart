import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/models/project_model.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';
import 'package:personal_website/utils/app_utils.dart';
import 'package:personal_website/widgets/buttons/icon_button_custom.dart';
import 'package:personal_website/widgets/buttons/text_button_custom.dart';

class ProjectItem extends StatefulWidget {
  const ProjectItem({
    Key? key,
    required this.data,
    this.isShowAppStore = true,
    this.isShowGithub = false,
    this.isShowPlaystore = true,
    this.isShowAssociated = true,
  }) : super(key: key);

  final ProjectModel data;
  final bool isShowPlaystore;
  final bool isShowAppStore;
  final bool isShowGithub;
  final bool isShowAssociated;

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  TextDecoration decoration = TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.h),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor2,
        borderRadius: BorderRadius.circular(20.h),
      ),
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.folder,
                color: AppColor.primaryColor,
                size: 50.h,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (widget.isShowPlaystore)
                      IconButtonCustom(
                        isCustomIcon: true,
                        customIcon: 'ic_playstore.png',
                        iconSize: 30.h,
                        onPressed: () {
                          AppUtils.openLink(
                            widget.data.projectLink['playstore'],
                          );
                        },
                      ),
                    if (widget.isShowAppStore)
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: IconButtonCustom(
                          isCustomIcon: true,
                          customIcon: 'ic_appstore.png',
                          iconSize: 30.h,
                          onPressed: () {
                            AppUtils.openLink(
                              widget.data.projectLink['appstore'],
                            );
                          },
                        ),
                      ),
                    if (widget.isShowGithub)
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: IconButtonCustom(
                          isCustomIcon: true,
                          customIcon: 'ic_github.png',
                          iconSize: 30.h,
                          onPressed: () {
                            AppUtils.openLink(
                              widget.data.projectLink['github'],
                            );
                          },
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(20.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButtonCustom(
                    label: widget.data.projectTitle,
                    labelTextStyle: TextStyles.heeboText.copyWith(
                      fontSize: 20.h,
                      fontWeight: FontWeight.w600,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    widget.data.projectDesc,
                    style: TextStyles.heeboText
                        .copyWith(fontSize: 20.h, color: AppColor.textColor2),
                  ),
                ],
              ),
            ),
          ),
          if (widget.isShowAssociated)
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: RichText(
                text: TextSpan(
                  text: 'Associated with ',
                  style: TextStyles.firaCodeText
                      .copyWith(color: AppColor.textColor1),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          AppUtils.openLink(widget.data.companyLink);
                        },
                      mouseCursor: MaterialStateMouseCursor.clickable,
                      onEnter: (event) {
                        setState(() {
                          decoration = TextDecoration.underline;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          decoration = TextDecoration.none;
                        });
                      },
                      text: widget.data.companyName,
                      style: TextStyles.firaCodeText.copyWith(
                        color: AppColor.primaryColor,
                        decoration: decoration,
                        decorationColor: AppColor.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
