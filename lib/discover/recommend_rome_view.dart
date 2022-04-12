import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class HomeRecommendRomeView extends StatefulWidget {
  int mIndex = 0;
  String mText = "";

  HomeRecommendRomeView(int index, String text) {
    mIndex = index;
    mText = text;
  }

  @override
  State<StatefulWidget> createState() {
     return HomeRecommendRomeState();
  }
}

class HomeRecommendRomeState extends State<HomeRecommendRomeView> {
  @override
  Widget build(BuildContext context) {
     return HomeRecommendCardView();
  }
}

class HomeRecommendCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeRecommendRomeView widget = context.findAncestorWidgetOfExactType<HomeRecommendRomeView>();
    final size = MediaQuery.of(context).size;
    final double containerWidth = (size.width - Constant.COMMON_VIEW_MARGIN * 2 - 7) / 2;
    return Row(
      children: [
        Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: containerWidth,
                  height: containerWidth,
                  decoration:  BoxDecoration(
                    color: Color(0xffee5a63),
                  ),
                  child: Image.asset("images/test1.jpg"),
                )),
            SizedBox(
                height: 8.0
            ),
            Container(
                width: containerWidth,
                alignment: Alignment.centerLeft,
                child: Text(
                    widget.mText,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1e1e1e)
                    )
                )
            ),
            SizedBox(
                height: 16.0
            )
          ],
        ),
      ],
    );
  }

}


