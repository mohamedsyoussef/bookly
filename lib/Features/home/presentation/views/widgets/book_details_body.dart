import 'package:bookly_app/Features/home/presentation/views/widgets/favourite_books_item.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'books_action.dart';
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
            Gap(20.h),
            const CustomBookDetailsAppBar(),
            Gap(20.h),
            SizedBox(
              height: 243.h,
              width: 162.w,
              child: Image.asset(AssetsData.testImage),
            ),
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
            Gap(20.h),
            const BooksAction(),
            Gap(30.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.montesrratTextStyle18
                    .copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Gap(20.h),
            const FavouriteBooksList(),
          ],
        ),
      ),
    );
  }
}

class FavouriteBooksList extends StatelessWidget {
  const FavouriteBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => Gap(10.h),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const FavouriteBooksItem();
        },
      ),
    );
  }
}
