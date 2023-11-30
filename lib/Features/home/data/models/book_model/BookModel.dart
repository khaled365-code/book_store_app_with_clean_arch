import 'package:bookly/Features/home/domain/entities/book_entity.dart';

import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "u13hVoYVZa8C"
/// etag : "srFUJNg6bNk"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/u13hVoYVZa8C"
/// volumeInfo : {"title":"Planning Extreme Programming","authors":["Kent Beck","Martin Fowler"],"publisher":"Addison-Wesley Professional","publishedDate":"2001","description":"Without careful ongoing planning, the software development process can fall apart. Extreme Programming (XP) is a new programming discipline, or methodology, that is geared toward the way that the vast majority of software development projects are handled -- in small teams. In this new book, noted software engineers Kent Beck and Martin Fowler show the reader how to properly plan a software development project with XP in mind. The authors lay out a proven strategy that forces the reader to plan as their software project unfolds, and therefore avoid many of the nasty problems that can potentially spring up along the way.","industryIdentifiers":[{"type":"ISBN_10","identifier":"0201710919"},{"type":"ISBN_13","identifier":"9780201710915"}],"readingModes":{"text":false,"image":true},"pageCount":162,"printType":"BOOK","categories":["Computers"],"averageRating":4,"ratingsCount":6,"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.2.4.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=u13hVoYVZa8C&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=u13hVoYVZa8C&dq=programming&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Planning_Extreme_Programming.html?hl=&id=u13hVoYVZa8C"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED_FOR_ACCESSIBILITY","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=u13hVoYVZa8C&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"In this new book, noted software engineers Kent Beck and Martin Fowler show the reader how to properly plan a software development project with XP in mind."}

class BookModel extends BookEntity {
  BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo,
      this.searchInfo,}) : super(bookId: id,title: volumeInfo!.title,author: volumeInfo.authors!.first,image: volumeInfo.imageLinks?.thumbnail ?? 'https://st3.depositphotos.com/1322515/35964/v/600/depositphotos_359648638-stock-illustration-image-available-icon.jpg'  ,price: volumeInfo.ratingsCount ?? 20.15 ,rating: volumeInfo.averageRating ?? 4.1 );

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

}