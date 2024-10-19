import 'package:flutter/material.dart';
import 'package:new_newsapp/Models/verticalModel.dart';
import 'package:new_newsapp/widgets/verticalwidget.dart';

class VerticalListView extends StatelessWidget {
   VerticalListView({super.key, required this.articles});
  final List <Verticalmodel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
       (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom:20),
            child: VerticalWidget(verticalmodel:articles[index]),
          );
         
        }));
  }
}