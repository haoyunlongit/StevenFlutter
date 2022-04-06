import 'package:flutter/material.dart';

class HomeRecommendSectionTitle extends StatelessWidget {
  String mTitle = "";

  HomeRecommendSectionTitle(String title) {
    mTitle = title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 16.0, top: 4, bottom: 4),
      child: Text (
        mTitle,
        style: TextStyle(
            fontSize: 17,
            color:Colors.black
        ),
      ),
    );
  }

}