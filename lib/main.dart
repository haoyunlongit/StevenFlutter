import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Discover/recommend_game_view.dart';
import 'Discover/recommend_banner.dart';
import 'Discover/recommend_section_title.dart';
import 'Discover/recommend_tab_view.dart';
import 'discover/home_app_bar.dart';
import 'discover/home_bottom_tab_bar.dart';
import 'discover/recommend_rome_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';
    final width = window.physicalSize.width;
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: HomeAppbar(),
          body: Stack(
          children: [
            Container(
              color: Colors.blueGrey,
              transform: Matrix4.translationValues(0, -100, 0),
              width: width,
              height: 300.0,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      HomeRecommendBanner(),
                      HomeRecommendSectionTitle("快速匹配"),
                      HomeRecommendGameView(),
                      HomeRecommendSectionTitle("发现好友"),
                      HomeRecommendTabView(),
                      HomeRecommendRomeView(),
                      HomeRecommendRomeView()
                    ],
                  ),
                )
            ),
            Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 66, bottom: 20),
                child: HomeBottomTabbar()
            ),
          ],
        )
      ),
    );
  }
}
