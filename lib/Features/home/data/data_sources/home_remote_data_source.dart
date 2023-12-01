


import 'package:bookly/Features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/core/utils/api_service.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource
{

  Future<List<BookEntity>> fetchFeaturedBooks();

  Future<List<BookEntity>> fetchBestSellerBooks();

}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {

  final ApiService apiService;
  HomeRemoteDataSourceImp({required this.apiService});


  @override
  Future<List<BookEntity>> fetchBestSellerBooks() async 
  {
     

   var data=await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=programming' );
    
    return getBooksList(data);
    
  }

  List<BookEntity> getBooksList(data)
  {
    List<BookEntity>booksList=[];
    
    for( var item in data)
      {
        booksList.add(BookModel.fromJson(data['items']));
      }
    
    return booksList;
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async
  {
   
     var data=await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=software engineering');
     return getBooksList(data);
  }
}
