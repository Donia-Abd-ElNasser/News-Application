import 'package:dio/dio.dart';
import 'package:new_newsapp/Models/verticalModel.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});
  Future<List<Verticalmodel>> getArticleNews({required String category})async{
    try {
  Response response=await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=6f52ed843efd4d829849d076889430c4&category=$category');

  Map<String,dynamic> jsonData=response.data;
     List<dynamic>articles =jsonData['articles'];
     List<Verticalmodel> newArticlelist=[];
     for (var article in articles) {
  Verticalmodel articleModel = Verticalmodel.fromjson(article);
      newArticlelist.add(articleModel);
   
     }return newArticlelist;
} catch (e) {
 print ('error occured while fetching articles $e');
 return [];
}
  }
}