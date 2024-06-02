import 'dart:ffi';

import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_details_rating.dart';

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
            Gap(4.h),
            Text(
              'The Jungle Book',
              style: Styles.montesrratTextStyle18.copyWith(
                  fontSize: 18.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic),
            ),
            Gap(14.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 44.0),
              child: CustomBookDetailsRating(),
            ),
            Gap(37.h),
            const BooksAction(),
          ],
        ),
      ),
    );
  }
}

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            textStyle: Styles.montesrratTextStyle18.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: Colors.black
            ),
            buttonLabel: '19.99 \$',
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            textStyle: Styles.gilroyTextStyle16.copyWith(color: Colors.white),
            buttonLabel: 'Free Preview',
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
