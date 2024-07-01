import 'package:flutter/material.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';

class TextButtonCustom extends StatefulWidget {
  const TextButtonCustom({
    super.key,
    required this.label,
    required this.onPressed,
    this.isUseOverlayColor = false,
    this.padding,
    this.textColor = AppColor.textColor1,
    this.labelTextStyle,
  });

  final String label;
  final Function() onPressed;
  final bool isUseOverlayColor;
  final EdgeInsets? padding;
  final Color textColor;
  final TextStyle? labelTextStyle;

  @override
  State<TextButtonCustom> createState() => _TextButtonCustomState();
}

class _TextButtonCustomState extends State<TextButtonCustom> {
  Color hoverColor = AppColor.textColor1;
  bool isHover = false;
  WidgetStateProperty<Color>? overlayColor;

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
            hoverColor = AppColor.textColor1;
          }
        });
      },
      style: ButtonStyle(
        padding: WidgetStateProperty.all(widget.padding ?? EdgeInsets.zero),
        overlayColor: widget.isUseOverlayColor
            ? overlayColor
            : WidgetStateProperty.all(Colors.transparent),
      ),
      child: Text(
        widget.label,
        style: widget.labelTextStyle != null
            ? widget.labelTextStyle!
                .copyWith(color: isHover ? hoverColor : widget.textColor)
            : TextStyles.firaCodeText
                .copyWith(color: isHover ? hoverColor : widget.textColor),
      ),
    );
  }
}
