import 'package:flutter/cupertino.dart';
import 'package:helloworld/discover/recommend_rome_view.dart';

import '../Discover/recommend_banner.dart';
import '../Discover/recommend_game_view.dart';
import '../Discover/recommend_section_title.dart';
import '../Discover/recommend_tab_view.dart';

class HomeContainerView extends StatefulWidget {
  HomeContainerViewState state;

  @override
  State<StatefulWidget> createState() {
     state = HomeContainerViewState();
     return state;
  }

  void setAlpha(double alpha) {
    state.setAlpha(alpha);
  }
}

class HomeContainerViewState extends State<HomeContainerView> {
  Color bgColor = Color(0x00eff3f6);
  @override
  Widget build(BuildContext context) {
     return Container(
       decoration: BoxDecoration(
           gradient: LinearGradient(
             colors: [bgColor, Color(0xffeff3f6)],
             begin: Alignment.topCenter,
             end: Alignment(0.0, 0.2),
           )
       ),
       child: Column(
         children: [
           HomeRecommendBanner(),
           HomeRecommendSectionTitle("快速匹配"),
           HomeRecommendGameView(),
           HomeRecommendSectionTitle("发现好友"),
           HomeRecommendTabView(),
           HomeRecommendRomeView(),
           HomeRecommendRomeView(),
           HomeRecommendRomeView(),
           HomeRecommendRomeView()
         ],
       ),
     );
  }

  void setAlpha(double alpha) {
    setState(() {
      double alphaInt = (alpha * 255);
      bgColor = Color.fromARGB(alphaInt.toInt(), 239, 243, 246);
    });
  }
}