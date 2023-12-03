part of 'best_seller_books_cubit.dart';

@immutable
abstract class BestSellerBooksState {}

class BestSellerBooksInitial extends BestSellerBooksState {}
class BestSellerBooksLoading extends BestSellerBooksState {}
class BestSellerBooksSuccess extends BestSellerBooksState {

  final List<BookEntity> books;
  BestSellerBooksSuccess({required this.books});

}
class BestSellerBooksFailure extends BestSellerBooksState {

  final String errorMessage;
  BestSellerBooksFailure({required this.errorMessage});
}

