import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookView extends StatelessWidget {
  const CustomBookView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 224.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(AssetsData.testImage),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
