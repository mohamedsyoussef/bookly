part of 'similiar_books_cubit.dart';

sealed class SimiliarBooksState extends Equatable {
  const SimiliarBooksState();

  @override
  List<Object> get props => [];
}

final class SimiliarBooksInitial extends SimiliarBooksState {}

class SimiliarBooksLoading extends SimiliarBooksState {}

class SimiliarBooksSuccess extends SimiliarBooksState {
  final List<BookModel> books;
  const SimiliarBooksSuccess(this.books);
}

class SimiliarBooksFailure extends SimiliarBooksState {
  final String errMessage;
  const SimiliarBooksFailure(this.errMessage);
}

