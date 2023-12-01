


import 'package:hive/hive.dart';

import '../../Features/home/domain/entities/book_entity.dart';
import '../constants.dart';

void saveBooksData(List<BookEntity> booksList,boxName) {
  var box=Hive.box(boxName);
  box.addAll(booksList);
}