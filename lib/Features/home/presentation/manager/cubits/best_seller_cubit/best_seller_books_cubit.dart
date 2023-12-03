import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../domain/entities/book_entity.dart';
import '../../../../domain/use_cases/best_seller_use_case.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.bestSellerUseCase) : super(BestSellerBooksInitial());

  final BestSellerUseCase bestSellerUseCase;
  Future getBestSellerBooks() async
  {
    emit(BestSellerBooksLoading());
    var result = await bestSellerUseCase.call();
    result.fold((failure) {
      emit(BestSellerBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(BestSellerBooksSuccess(books: books));
    });
  }
}
