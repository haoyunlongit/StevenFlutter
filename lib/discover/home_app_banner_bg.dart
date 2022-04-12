import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBannerBg extends StatefulWidget {
  HomeAppBannerBgState state;
  @override
  State<StatefulWidget> createState() {
    state = HomeAppBannerBgState();
    return state;
  }

  void setAlpha(double alpha) {
    state.setAlpha(alpha);
  }
}

class HomeAppBannerBgState extends State<HomeAppBannerBg> {
  String mockUrl = "http://puui.qpic.cn/media_img/lena/PIC8p5vuf_639_1029/0";
  Color bgColor = Color(0x4deff3f6);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(child: Container(
          transform: Matrix4.translationValues(0, -120, 0),
          color: Color(0xffeff3f6),
        )),
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
            color: bgColor,
          ),
        ))
      ],
    );
  }

  void setAlpha(double alpha) {
    setState(() {
      double alphaDouble = (alpha * 179) + 77;
      bgColor = Color.fromARGB(min(alphaDouble.toInt(), 255), 239, 243, 246);
    });
  }
}