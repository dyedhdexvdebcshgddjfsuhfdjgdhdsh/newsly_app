import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newsly_app/models/articles_model.dart';
import 'package:newsly_app/models/category_model.dart';
import 'package:newsly_app/services/news_services.dart';
import 'package:newsly_app/widgets/categoryies_listview.dart';
import 'package:newsly_app/widgets/news_item.dart';
import 'package:newsly_app/widgets/news_listview.dart';
import 'package:newsly_app/widgets/news_listview_builder.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title:const Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloud',
                style: TextStyle(fontWeight: FontWeight.bold,color:Colors.orange),
              ),
            ],
          ),

          centerTitle: true,
        ),
        body:Padding(padding:EdgeInsets.symmetric(horizontal:12,
        ),
        child:CustomScrollView(
           slivers: [
             SliverToBoxAdapter(child:  CategoryListView() ) ,
             SliverToBoxAdapter(child:SizedBox(height:32,),) ,
             NewsListViewBuilder(category:'general')
           ],
        ),
        )

    /*    Column(
          children: [


          ],
        )
     */
    );
  }
}
