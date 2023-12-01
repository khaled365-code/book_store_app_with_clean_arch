

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource
{

  List<BookEntity> fetchFeaturedBooks();

  List<BookEntity> fetchBestSellerBooks();

}

class HomeLocalDataSourceImp extends HomeLocalDataSource {


  @override
  List<BookEntity> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
