import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return StaggeredGridView.countBuilder(
       crossAxisCount: 2,   //横轴单元格数量
       itemCount: 80,  //元素数量
       itemBuilder: (context,i) {
         return Container(
           width: 800,
           height: (100 + Random().nextInt(25).toDouble()),
           decoration: BoxDecoration(
               color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
                   Random().nextInt(256), 1)
           ),
         );
       },
       staggeredTileBuilder: (index){
         if(index == 0 || index == 1) {
           return StaggeredTile.fit(2);
         } else {
           return StaggeredTile.fit(1);
         }//第一个参数是横轴所占的单元数，第二个参数是主轴所占的单元数
       },
       padding: EdgeInsets.all(8),
       mainAxisSpacing: 8.0,
       crossAxisSpacing: 8.0,
     );
  }

}