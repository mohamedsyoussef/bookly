import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteBooksItem extends StatelessWidget {
  const FavouriteBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.w,
      height: 112.h,
      child: Image.asset(AssetsData.testImage2),
    );
  }
}
