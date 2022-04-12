import 'package:flutter/material.dart';
import 'discover/home_app_banner_bg.dart';
import 'discover/home_app_bar.dart';
import 'discover/home_bottom_tab_bar.dart';
import 'discover/home_container_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';
    var homeAppBar = HomeAppbar();
    var homeScrollerController = ScrollController();
    var homeAppBannerBg = HomeAppBannerBg();
    homeScrollerController.addListener(() {
      double alpha = homeScrollerController.offset / 300;
      if(alpha > 1.0) {
        alpha = 1;
      }
      homeAppBar.setAlpha(alpha);
      homeAppBannerBg.setAlpha(alpha);
    });
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: homeAppBar,
          body: Stack(
          children: [
            homeAppBannerBg,
            HomeContainerView(homeScrollerController),
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


