import 'package:bookly_app/Features/home/presentation/manager/similiar_books_cubit/similiar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';

class SimiliarBooksList extends StatelessWidget {
  const SimiliarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimiliarBooksCubit, SimiliarBooksState>(
      builder: (context, state) {
        if (state is SimiliarBooksSuccess) {
          return SizedBox(
            height: 112.h,
            child: ListView.builder(
              padding: EdgeInsets.only(right: 5.w),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return CustomBookImage(
                  urlImage:
                      state.books[index].volumeInfo!.imageLinks?.thumbnail ??
                          '',
                );
              },
            ),
          );
        } else if (state is SimiliarBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        }

        return const Center(child: CustomLoadingIndicator());
      },
    );
  }
}
