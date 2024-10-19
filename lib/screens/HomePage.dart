import 'package:flutter/material.dart';
import 'package:new_newsapp/listViews/HorizontalListView.dart';
import 'package:new_newsapp/screens/HorizontalCategoryView.dart';
import 'package:new_newsapp/widgets/VerticalNewsBuilder.dart';
import 'package:new_newsapp/widgets/verticalwidget.dart';

class HomePage_screen extends StatelessWidget {
  const HomePage_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'World',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'News',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 182, 10, 79),
                ),
              )
            ],
          ),
        ),
      ),
      body:  Padding(
        padding: EdgeInsets.all(20),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: HorizontalListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 35,
              ),
            ),
            Newslistbuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
