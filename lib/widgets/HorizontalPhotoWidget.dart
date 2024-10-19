import 'package:flutter/material.dart';
import 'package:new_newsapp/Models/HorizontalModel.dart';
import 'package:new_newsapp/screens/HorizontalCategoryView.dart';

class HorizontalPhotoWidget extends StatelessWidget {
  const HorizontalPhotoWidget({super.key, required this.items});
  final Horizontalmodel items;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return HorizontalCategoryView(category: items.text,);
          },),);},
        
      
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
            height: 150,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              image: DecorationImage(
                image: AssetImage(items.photo),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                items.text,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 182, 10, 79),
                ),
              ),
            )),
      ),
    );
  }
}
