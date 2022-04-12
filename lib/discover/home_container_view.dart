import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:helloworld/discover/recommend_rome_view.dart';

import '../Discover/recommend_banner.dart';
import '../Discover/recommend_game_view.dart';
import '../Discover/recommend_section_title.dart';
import '../Discover/recommend_tab_view.dart';

class HomeContainerView extends StatefulWidget {
  ScrollController scrollController;

  HomeContainerView(this.scrollController) : super();

  @override
  State<StatefulWidget> createState() {
     return HomeContainerViewState(scrollController);
  }
}

List<String> titles = ["我的游戏", "我的游戏我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式", "我的游戏,打发的方式",
  "我的游戏,打发的方式我的游戏,打发的方式", "我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式", "我的游戏,打发的方式",
  "我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式", "我的游戏", "我的游戏我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式", "我的游戏,打发的方式",
  "我的游戏,打发的方式我的游戏,打发的方式", "我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式", "我的游戏,打发的方式",
  "我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式", "我的游戏", "我的游戏我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式", "我的游戏,打发的方式",
  "我的游戏,打发的方式我的游戏,打发的方式", "我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式", "我的游戏,打发的方式",
  "我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式"];

class HomeContainerViewState extends State<HomeContainerView> {
  Color bgColor = Color(0x00eff3f6);
  ScrollController scrollController;

  HomeContainerViewState(this.scrollController) : super();

  @override
  Widget build(BuildContext context) {
     return StaggeredGridView.countBuilder(
       controller: scrollController,
       crossAxisCount: 2,   //横轴单元格数量
       itemCount: 4 + titles.length,
       itemBuilder: (context, i) {
         switch(i) {
           case 0: {
              return HomeRecommendBanner();
           }
           case 1: {
             return HomeRecommendSectionTitle("快速匹配");
           }
           case 2: {
             return HomeRecommendGameView();
           }
           case 3: {
             return HomeRecommendSectionTitle("发现好友");
           }
           case 4: {
             return HomeRecommendTabView();
           }
           default: {
             return HomeRecommendRomeView(i, titles[i - 5]);
           }
         }
       },
       staggeredTileBuilder: (index){
         if(index >= 0 && index <= 4) {
           return StaggeredTile.fit(2);
         } else {
           return StaggeredTile.fit(1);
         }//第一个参数是横轴所占的单元数，第二个参数是主轴所占的单元数
       },
       // padding: EdgeInsets.all(8),
       // mainAxisSpacing: 8.0,
       // crossAxisSpacing: 8.0,
     );
  }

  void setAlpha(double alpha) {
    setState(() {
      double alphaInt = (alpha * 255);
      bgColor = Color.fromARGB(alphaInt.toInt(), 239, 243, 246);
    });
  }
}