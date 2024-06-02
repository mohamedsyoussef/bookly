import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    this.borderRadius,
    required this.buttonLabel, required this.textStyle,
  });
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final String buttonLabel;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12.r),
          ),
        ),
        onPressed: () {},
        child: Text(
          buttonLabel,
          style: textStyle,
        ),
      ),
    );
  }
}
