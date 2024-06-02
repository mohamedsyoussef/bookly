import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/styles.dart';

class CustomBookDetailsRating extends StatelessWidget {
  const CustomBookDetailsRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        Gap(1.w),
        Text(
          '4.5',
          style: Styles.montesrratTextStyle18.copyWith(fontSize: 16.sp),
        ),
        Gap(4.w),
        Text(
          '(2330)',
          style: Styles.montesrratTextStyle18
              .copyWith(fontSize: 14.sp, color: Colors.grey),
        )
      ],
    );
  }
}
