import 'package:flutter/material.dart';

class HomeRecommendTabView extends StatefulWidget {
     @override
     createState() => CustomTabPageState();
}

class CustomTabPageState extends State<HomeRecommendTabView> with TickerProviderStateMixin{

     List<String> _titleList = <String>['关注','推荐', '抗疫', '热榜', '精品课', '旅游', '我的真', '真的天下'];
     int selectedIndex = 0;
     bool isSelected = false;

     @override
     Widget build(BuildContext context) {
          return SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Container(
                    margin: EdgeInsets.only(top: 4, bottom: 4, left: 12.5, right: 12.5),
                    color: Color(0xffeff3f6),
                    child: Row(
                         children: _titleList.map((e) => GestureDetector(
                              child: Container(
                                  margin: EdgeInsets.only(left: 3.5, right: 3.5),
                                  decoration: new BoxDecoration(
                                      color: _titleList.indexOf(e) == selectedIndex ? Colors.red : Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(12))
                                  ),
                                  padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 3.0, bottom: 3.0),
                                  child:ConstrainedBox(
                                       constraints: BoxConstraints(
                                            maxHeight: 24,
                                       ),
                                       child: Text(
                                            e,
                                            style: TextStyle(
                                                color: _titleList.indexOf(e) == selectedIndex  ? Colors.white : Colors.black
                                            ),
                                       ),
                                  )
                              ),
                              onTap: () {
                                   setState(() {
                                        selectedIndex = _titleList.indexOf(e);
                                   });
                              },
                         )).toList(),
                    ),
               ),
          );
     }
}
