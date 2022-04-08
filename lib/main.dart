import 'package:flutter/material.dart';
import 'Discover/recommend_game_view.dart';
import 'Discover/recommend_banner.dart';
import 'Discover/recommend_section_title.dart';
import 'Discover/recommend_tab_view.dart';
import 'discover/home_bottom_tab_bar.dart';
import 'discover/recommend_rome_view.dart';

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
        body: Stack(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Color(0xffeff3f6),
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
