import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:newsly_app/models/category_model.dart';
import 'package:newsly_app/screens/home_screen.dart';
import 'package:newsly_app/services/news_services.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
//  WebViewPlatform.instance != null;
  runApp(const NewsApp());
}
class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:HomeScreen() ,
      builder:EasyLoading.init(),
    );
  }
}
