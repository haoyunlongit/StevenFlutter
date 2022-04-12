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

List<String> titles = ["0我的游戏0", "1我的游戏我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式1", "2我的游戏,打发的方式2",
  "3我的游戏,打发的方式我的游戏,打发的方式3", "4我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式4", "5我的游戏,打发的方式5",
  "6我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式6", "7我的游戏7", "8我的游戏我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式8", "9我的游戏,打发的方式9",
  "10我的游戏,打发的方式我的游戏,打发的方式10", "11我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式11", "12我的游戏,打发的方式12",
  "13我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式13", "14我的游戏14", "15我的游戏我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式15", "16我的游戏,打发的方式16",
  "17我的游戏,打发的方式我的游戏,打发的方式17", "18我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式18", "19我的游戏,打发的方式19",
  "20我的游戏,打发的方式我的游戏,打发的方式我的游戏,打发的方式20"];

class HomeContainerViewState extends State<HomeContainerView> {
  Color bgColor = Color(0x00eff3f6);
  ScrollController scrollController;

  HomeContainerViewState(this.scrollController) : super();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeRecommendBanner(),
        HomeRecommendSectionTitle("快速匹配"),
        HomeRecommendGameView(),
        HomeRecommendSectionTitle("发现好友"),
        HomeRecommendTabView(),
        StaggeredGridView.countBuilder(
            controller: scrollController,
            padding: EdgeInsets.only(left: 16, right: 16),
            crossAxisSpacing: 7.0,
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: new NeverScrollableScrollPhysics(),
            itemCount: titles.length,
            itemBuilder: (context, i) {
              return HomeRecommendRomeView(i, titles[i]);
            },
            staggeredTileBuilder: (index){
              return StaggeredTile.fit(1);
            }
        )
      ],
    );
  }

  void setAlpha(double alpha) {
    setState(() {
      double alphaInt = (alpha * 255);
      bgColor = Color.fromARGB(alphaInt.toInt(), 239, 243, 246);
    });
  }
}