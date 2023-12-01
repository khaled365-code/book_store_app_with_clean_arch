

import 'package:bookly/core/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource
{

  List<BookEntity> fetchFeaturedBooks();

  List<BookEntity> fetchBestSellerBooks();

}

class HomeLocalDataSourceImp extends HomeLocalDataSource {


  @override
  List<BookEntity> fetchBestSellerBooks() {

    var box=Hive.box<BookEntity>(kBestsellerbooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box=Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }
}
