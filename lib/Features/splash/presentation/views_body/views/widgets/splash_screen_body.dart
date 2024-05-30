import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 150.h,
              child: SvgPicture.asset(
                AssetsData.logo,
              ),
            ),
            Gap(30.h),
            Text(
              'Read. Download. Share.',
              style: TextStyle(fontSize: 20.sp),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
