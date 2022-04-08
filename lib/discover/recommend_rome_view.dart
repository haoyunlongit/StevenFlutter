import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class HomeRecommendRomeView extends StatefulWidget {
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
    final size =MediaQuery.of(context).size;
    final double containerWidth = (size.width - Constant.COMMON_VIEW_MARGIN * 2 - 7) / 2;
    return Container(
      margin: EdgeInsets.only(top: 12, left: Constant.COMMON_VIEW_MARGIN, right: Constant.COMMON_VIEW_MARGIN, bottom: 16),
      child: Row(
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
              Container(
                  height: 8.0
              ),
              Container(
                width: containerWidth,
                alignment: Alignment.centerLeft,
                child: Text(
                    '明星陪你一起玩游戏',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1e1e1e)
                    )
                )
              )
            ],
          ),
          Container(
              width: 7.0
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child:Container(
                  width: containerWidth,
                  height: containerWidth,
                  child: Image.asset("images/test2.jpg"),
                )
              ),
              Container(
                  height: 8.0
              ),
              Container(
                width: containerWidth,
                alignment: Alignment.centerLeft,
                child: Text(
                    '明星陪你一起玩游戏',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1e1e1e)
                    )
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}


