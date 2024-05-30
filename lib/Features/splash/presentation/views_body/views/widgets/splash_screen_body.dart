import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), 
  );
  slideAnimation = Tween<Offset>(
    begin: const Offset(0, 10),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _animationController,
    curve: Curves.fastOutSlowIn,
  ));
  _animationController.forward();
  
  
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
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
            SlideTransition(
              position:slideAnimation ,
              child: Text(
                'Read. Download. Share.',
                style: TextStyle(fontSize: 20.sp),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
