import 'package:flutter/material.dart';
import 'package:idcard_tni/chat_ivan_page.dart';
import 'package:idcard_tni/chat_page.dart';
import 'package:idcard_tni/main_page.dart';
import 'package:idcard_tni/news_detail_page.dart';
import 'package:idcard_tni/news_page.dart';
import 'package:idcard_tni/wallet_page.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {
        'chat_ivan': (context) => ChatIvanPage(),
        'news_detail': (context) => NewsDetailPage()

      },
    );
  }
}
