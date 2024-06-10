import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/functions/navigation.dart';
import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customNavigate(context, bookDetailsScreen, extra: bookModel);
      },
      child: SizedBox(
        width: 290.w,
        height: 120.h,
        child: Row(
          children: [
            SizedBox(
              width: 80.w,
              height: 110.h,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? "",
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Colors.white, width: 2.w),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Gap(30.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookModel.volumeInfo?.title ?? "",
                    style: Styles.gtSctraFineTextStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Gap(2.h),
                  Text(
                    bookModel.volumeInfo?.authors?.first ?? "",
                    style: Styles.montesrratTextStyle18
                        .copyWith(fontSize: 14.sp, color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Gap(5.h),
                  CustomRating(
                    averageRating: bookModel.volumeInfo?.averageRating ?? 0.0,
                    ratingCount: bookModel.volumeInfo?.ratingsCount ?? 0,
                    price: bookModel.saleInfo?.listPrice?.amount?.toString() ??
                        "0.0",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
