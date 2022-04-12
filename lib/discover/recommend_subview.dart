import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeRecommendLabelView extends StatelessWidget {
  String mText = "";

  HomeRecommendLabelView(String text) {
     mText = text;
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        fit: BoxFit.fitWidth,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xffff9177),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
          ),
          padding: EdgeInsets.only(top: 4, bottom: 4, left: 6, right: 6),
          child: Text(
            mText,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(
                fontSize: 11,
                color: Colors.white,
                fontWeight: FontWeight.w500
            ),
          ),
        )
    );
  }

}