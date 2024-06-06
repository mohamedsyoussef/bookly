part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  final String errMessage; // error message

  const NewestBooksFailure(this.errMessage);
}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books; // list of books

  const NewestBooksSuccess(this.books);
}
