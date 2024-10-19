import 'package:flutter/material.dart';
import 'package:new_newsapp/Models/verticalModel.dart';

class VerticalWidget extends StatelessWidget {
  VerticalWidget({super.key,required this.verticalmodel});
final Verticalmodel verticalmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: verticalmodel.photo != null
              ? Image.network(
            verticalmodel.photo!,
            width: double.infinity,
            fit: BoxFit.cover,
          )
              : Image.asset(
            'assets/download.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(
          height: 20,
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          verticalmodel.title?? 'No Title for this article ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
         verticalmodel.description??'No Description for this article ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        )
      ],
    );
  }
}
//all done