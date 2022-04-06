import 'package:flutter/material.dart';
import 'Discover/HomeRecommendHomeBanner.dart';
import 'Discover/HomeRecommendSectionTitle.dart';
import 'Discover/HomeRecommendTab.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          backgroundColor: Color(0xffeff3f6),
        ),
        body: Container (
          color: Color(0xffeff3f6),
          child: Column(
            children: [
              HomeRecommendBanner(),
              HomeRecommendSectionTitle("好玩的游戏"),
              HomeRecommendTabView(),
              HomeRecommendSectionTitle("发现好友"),
            ],
          ),
        ),
      ),
    );
  }
}