import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';

class IconButtonCustom extends StatefulWidget {
  const IconButtonCustom({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.iconSize,
    this.isUseOverlayColor = false,
    this.padding,
  }) : super(key: key);

  final IconData icon;
  final Function() onPressed;
  final double? iconSize;
  final bool isUseOverlayColor;
  final EdgeInsets? padding;

  @override
  State<IconButtonCustom> createState() => _IconButtonCustomState();
}

class _IconButtonCustomState extends State<IconButtonCustom> {
  Color hoverColor = AppColor.textColor2;
  bool isHover = false;
  MaterialStateProperty<Color>? overlayColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      onHover: (value) {
        setState(() {
          if (value == true) {
            isHover = true;
            hoverColor = AppColor.primaryColor;
          } else {
            isHover = false;
            hoverColor = AppColor.textColor2;
          }
        });
      },
      style: ButtonStyle(
        padding: MaterialStateProperty.all(widget.padding ?? EdgeInsets.zero),
        overlayColor: widget.isUseOverlayColor
            ? overlayColor
            : MaterialStateProperty.all(Colors.transparent),
        minimumSize: MaterialStateProperty.all(
          Size(widget.iconSize ?? 25.h, widget.iconSize ?? 25.h),
        ),
      ),
      child: Icon(
        widget.icon,
        color: hoverColor,
      ),
    );
  }
}
