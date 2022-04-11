import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBannerBg extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomeAppBannerBgState();
  }
}

class HomeAppBannerBgState extends State<HomeAppBannerBg> {
  String mockUrl = "http://puui.qpic.cn/media_img/lena/PIC8p5vuf_639_1029/0";

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            child: Container(
           transform: Matrix4.translationValues(0, -120, 0),
          child: Image.network(mockUrl, fit: BoxFit.cover),
        )),
        Positioned(child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            height: 300,
            transform: Matrix4.translationValues(0, -120, 0),
            color: Color(0x4DFFFFFF),
          ),
        ))
      ],
    );
  }
}