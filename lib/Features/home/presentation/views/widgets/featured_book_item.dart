import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(),
      ),
      imageBuilder: (context, imageProvider) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        width: 140.w,
        height: 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: Colors.white, width: 2.w),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fill,
            
          ),
        ),
      ),
    );
  }
}
