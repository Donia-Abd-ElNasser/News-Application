import 'package:flutter/material.dart';
import 'package:new_newsapp/Models/HorizontalModel.dart';
import 'package:new_newsapp/widgets/HorizontalPhotoWidget.dart';

class HorizontalListView extends StatelessWidget {
   HorizontalListView({super.key});
  final List<Horizontalmodel> HorizontalWidgets =  [
    Horizontalmodel(photo: 'assets/images.jpg', text: 'General'),
    Horizontalmodel(photo: 'assets/technology.jpg', text: 'Technology'),
    Horizontalmodel(photo: 'assets/science.jpeg', text: 'Science'),
    Horizontalmodel(photo: 'assets/healthy.jpg', text: 'Health'),
    Horizontalmodel(photo: 'assets/sports.jpg', text: 'Sports'),
    Horizontalmodel(photo: 'assets/study.jpg', text: 'Entertainment'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: HorizontalWidgets.length,
        itemBuilder: (context, index){
        return HorizontalPhotoWidget(items:HorizontalWidgets[index]);}),
    );
  }
}
