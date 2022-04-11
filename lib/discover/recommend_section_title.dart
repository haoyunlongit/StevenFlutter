import 'package:flutter/material.dart';

import '../constant/constant.dart';

class HomeRecommendSectionTitle extends StatelessWidget {
  String mTitle = "";

  HomeRecommendSectionTitle(String title) {
    mTitle = title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: Constant.COMMON_VIEW_MARGIN, top: 10),
      child: Text (
        mTitle,
        style: TextStyle(
            fontSize: 17,
            color:Color(0xff1e1e1e),
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }

}