import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(48.h),
          const CustomAppbar(),
          Gap(46.9.h),
          const FeaturedBooksListView(),
          Gap(49.h),
          Text(
            'Best Seller',
            style: Styles.montesrratTextStyle18,
            textAlign: TextAlign.left,
          ),
          Gap(20.h),
          const BestSellerListView(),
        ],
      ),
    );
  }
}

