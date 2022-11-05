import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/styles/colors.dart';
import 'package:personal_website/styles/styles.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    Key? key,
    this.height,
    this.width,
    this.radius,
    this.textStyle,
    this.label,
    this.color,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.padding,
    this.margin,
    this.enabled = true,
    this.isOutline = false,
    this.outlineColor,
    this.textColor,
  }) : super(key: key);

  final double? height;
  final double? width;
  final double? radius;
  final TextStyle? textStyle;
  final String? label;
  final Color? color;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function()? onTap;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final bool enabled;
  final bool isOutline;
  final Color? outlineColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? 42.h,
        decoration: isOutline
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(radius ?? 20.h),
                color: enabled
                    ? color ?? AppColor.primaryColor
                    : Colors.transparent,
                border: Border.all(color: outlineColor ?? Colors.white),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(radius ?? 20.h),
                color: enabled ? color ?? AppColor.primaryColor : Colors.grey,
              ),
        child: Align(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: enabled ? onTap ?? () {} : null,
              child: Container(
                margin: margin ?? EdgeInsets.zero,
                padding: padding ?? EdgeInsets.zero,
                child: Center(
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: prefixIcon ?? const SizedBox(),
                      ),
                      Center(
                        child: Text(
                          label ?? 'BUTTON',
                          style: textStyle ??
                              TextStyles.firaCodeText.copyWith(
                                color: textColor ?? AppColor.primaryColor,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: suffixIcon ?? const SizedBox(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
