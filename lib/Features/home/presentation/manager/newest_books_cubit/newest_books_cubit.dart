import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitial());
  final HomeRepo _homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await _homeRepo.fetchBestSellerBooks();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure.errMessage)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
