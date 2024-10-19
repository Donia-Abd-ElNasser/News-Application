import 'package:flutter/material.dart';
import 'package:new_newsapp/Models/HorizontalModel.dart';
import 'package:new_newsapp/widgets/VerticalNewsBuilder.dart';

class HorizontalCategoryView extends StatelessWidget {
  const HorizontalCategoryView({super.key,required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomScrollView(
          slivers: [
            Newslistbuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}