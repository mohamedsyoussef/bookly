import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppConstants.horizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(40.h),
            const CustomBookDetailsAppBar(),
            Gap(36.h),
            SizedBox(
              height: 243.h,
              width: 162.w,
              child: Image.asset(AssetsData.testImage),
            ),
            Gap(10.h),
            Text(
              'The Jungle Book',
              style: Styles.gtSctraFineTextStyle20
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 30.sp),
            ),
            Text(
              'The Jungle Book',
              style: Styles.montesrratTextStyle18.copyWith(
                  fontSize: 18.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w100),
            ),
            Gap(14.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44.0),
              child: const CustomRating(),
            )
          ],
        ),
      ),
    );
  }
}

