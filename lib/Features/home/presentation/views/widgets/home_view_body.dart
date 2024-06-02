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
            style: Styles.mediumTitle,
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
      width: 254.w,
      height: 105.h,
      child: Row(
        children: [
          SizedBox(
            width: 70.w,
            height: 105.h,
            child: Image.asset(AssetsData.testImage),
          ),
          Gap(30.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book Name',
                style: Styles.mediumTitle,
              ),
              Gap(2.h),
              Text(
                'Book author',
                style: Styles.mediumTitle
                    .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  const Text('19.99EGP'),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    '4.5',
                    style: Styles.mediumTitle
                        .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  const Text('(2330)')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
