import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'discover/home_app_banner_bg.dart';
import 'discover/home_app_bar.dart';
import 'discover/home_bottom_tab_bar.dart';
import 'discover/home_container_view.dart';
import 'get/get_widget.dart';

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
    return GetMaterialApp(
      title: title,
      home: Scaffold(
        appBar: homeAppBar,
          body: getWidget()
      ),
    );
  }
}


