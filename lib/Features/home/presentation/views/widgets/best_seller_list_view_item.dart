import 'package:bookly_app/core/functions/navigation.dart';
import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customNavigate(context, bookDetailsScreen);
      },
      child: SizedBox(
        width: 280.w,
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
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.gtSctraFineTextStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Gap(2.h),
                  Text(
                    'J.K. Rowling',
                    style: Styles.montesrratTextStyle18
                        .copyWith(fontSize: 14.sp, color: Colors.grey),
                  ),
                  Gap(5.h),
                  const CustomRating()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
