import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/styles.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({
    super.key,
    required this.price,
    required this.averageRating,
    required this.ratingCount,
  });
  final String price;
  final num averageRating;
  final int ratingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$price EGP',
          style: Styles.montesrratTextStyle18
              .copyWith(fontWeight: FontWeight.bold, fontSize: 16.sp),
        ),
        Gap(20.w),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        Gap(1.w),
        Text(
          '$averageRating',
          style: Styles.montesrratTextStyle18.copyWith(fontSize: 16.sp),
        ),
        Gap(4.w),
        Text(
          '($ratingCount)',
          style: Styles.montesrratTextStyle18
              .copyWith(fontSize: 14.sp, color: Colors.grey),
        )
      ],
    );
  }
}
