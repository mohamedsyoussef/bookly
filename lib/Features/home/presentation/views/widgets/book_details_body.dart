import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_details_rating.dart';
import 'similar_books_list.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(20.h),
          const CustomBookDetailsAppBar(),
          Gap(20.h),
          SizedBox(
            height: 243.h,
            width: 162.w,
            child: CachedNetworkImage(
              imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? "",
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Gap(20.h),
          Text(
            bookModel.volumeInfo?.title ?? "",
            style: Styles.gtSctraFineTextStyle20
                .copyWith(fontWeight: FontWeight.bold, fontSize: 20.sp),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          Gap(4.h),
          Text(
            bookModel.volumeInfo?.authors?.first ?? "",
            style: Styles.montesrratTextStyle18.copyWith(
                fontSize: 18.sp,
                color: Colors.grey,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic),
          ),
          Gap(14.h),
          CustomBookDetailsRating(
            averageRating: bookModel.volumeInfo?.averageRating ?? 0.0,
            ratingCount: bookModel.volumeInfo?.ratingsCount ?? 0,
          ),
          Gap(20.h),
          Padding(
            padding: AppConstants.horizontalPadding,
            child: const BooksAction(),
          ),
          Gap(30.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: AppConstants.horizontalPadding,
              child: Text(
                'You can also like:',
                style: Styles.montesrratTextStyle18
                    .copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Gap(20.h),
          const SimiliarBooksList(),
        ],
      ),
    );
  }
}
