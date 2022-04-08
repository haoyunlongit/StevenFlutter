import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomTabbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeBottomTabbarState();
  }
}

class HomeBottomTabbarState extends State<HomeBottomTabbar> {
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    final double containerWidth = size.width - 36 * 2;
     return ClipRRect(
       borderRadius: BorderRadius.circular(32),
       child: BackdropFilter(
         filter: ImageFilter.blur(
           sigmaX: 10,
           sigmaY: 10,
         ),
         child: Container(
           height: 64,
           width: containerWidth,
           color: Color(0xCCFFFFFF),
           child: Stack (
             children: [
               Container(
                 margin: EdgeInsets.only(top: 12, left: 40),
                 child: HomeBottomTabView('一起玩', 'images/ic_tab_play_normal.png'),
               ),
               Container(
                 alignment: Alignment.topCenter,
                 child: HomeBottomMiddleTabView(),
               ),
               Container(
                 alignment: Alignment.centerRight,
                 margin: EdgeInsets.only(top: 12, right: 40),
                 child: HomeBottomTabView('开房间', 'images/ic_tab_friends_normal.png'),
               )
             ],
           ),
         ),
       ),
     );
  }
}

class HomeBottomMiddleTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return  Image.asset(
       'images/ic_tab_logo.png',
       fit: BoxFit.cover,
       width: 56,
       height: 56,
     );
  }

}

class HomeBottomTabView extends StatelessWidget {
  String mTitle = "";
  String mIcon = "";

  HomeBottomTabView(String title, String icon) {
    mTitle = title;
    mIcon = icon;
  }

  @override
  Widget build(BuildContext context) {
     return Container(
       width: 64,
       height: 64,
         alignment: Alignment.center,
       child: Column(
          children: [
            Image.asset(
              mIcon,
              fit: BoxFit.cover,
              width: 24,
              height: 24,
            ),
            Container(
              height: 2,
            ),
            Text(
              mTitle,
              style: TextStyle(
                color: Color(0xFFFF4954)
              ),
            )
          ],
       )
     );
  }
}


