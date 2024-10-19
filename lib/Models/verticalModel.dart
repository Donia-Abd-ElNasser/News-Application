class Verticalmodel {
  final String? title;
  final String? photo;
  final String? description;

  Verticalmodel({required this.title, required this.photo, required this.description});

factory Verticalmodel.fromjson(Map<String,dynamic>json){
   return Verticalmodel(
        photo: json['urlToImage'],
        description: json['description'],
        title: json['title']);
}
}