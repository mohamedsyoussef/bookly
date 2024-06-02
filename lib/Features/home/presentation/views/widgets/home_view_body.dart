import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
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

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 2800.w,
      height: 105.h,
      child: Row(
        children: [
          SizedBox(
            width: 70.w,
            height: 105.h,
            child: Image.asset(AssetsData.testImage),
          ),
          Gap(30.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book Name',
                  style: Styles.gtSctraFineTextStyle20
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Gap(2.h),
                Text(
                  'Book author',
                  style: Styles.montesrratTextStyle18
                      .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                Gap(5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 \$',
                      style: Styles.montesrratTextStyle18
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(children: [
                      const Icon(
                        Icons.star_outlined,
                        color: Colors.amber,
                      ),
                      Text(
                        '4.5',
                        style: Styles.montesrratTextStyle18
                            .copyWith(fontSize: 16.sp),
                      ),
                      Gap(9.w),
                      const Text('(2330)'),
                    ])
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
