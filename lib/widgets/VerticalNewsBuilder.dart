import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_newsapp/Models/verticalModel.dart';
import 'package:new_newsapp/Services/services.dart';
import 'package:new_newsapp/listViews/verticalListView.dart';


class Newslistbuilder extends StatefulWidget {
  const Newslistbuilder({super.key, required this.category});
  final String category;

  @override
  State<Newslistbuilder> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Newslistbuilder> {
  var future;
  void initState() {
    super.initState();
    print('initializing News Builder list with category ${widget.category}');
    future = NewsServices(dio: Dio()).getArticleNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Verticalmodel>>(
      future: future,
      builder: (context, snapshot) {
         if (snapshot.connectionState==ConnectionState.waiting){
          print('loading waiting for data');
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
         }
        else if (snapshot.hasData) {
          print('data loaded successfully');
          return 
             VerticalListView(
              articles: snapshot.data!,
            );
         
        } else if (snapshot.hasError) {
          print ('error occured:${snapshot.error}');
          return const SliverToBoxAdapter(
            child: Text('oops, try again later'),
          );
        }
         else {
          print('no data');
          return SliverToBoxAdapter(
            child: Text('no data'),
          );
        }
      },
    );
  }
}
