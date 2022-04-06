
import 'package:flutter/material.dart';

class MyContainer extends Scaffold {
   @override
  // TODO: implement appBar
  PreferredSizeWidget get appBar => AppBar(
     title: Text('容器组件示例'),
   );

   @override
  // TODO: implement body
   Widget get body => Center(
     child: Container(
       width: 200,
       height: 200,
       alignment: Alignment.center,
       decoration: BoxDecoration(
         image: DecorationImage(
           image: ExactAssetImage("images/dog.jpeg"),
           fit: BoxFit.fill,
         ),
         border: Border.all(
           color: Colors.red,
           width: 1.0
         ),
         borderRadius: BorderRadius.all(Radius.circular(10))
       ),
       child: Text(
         "我的containt",
         textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: 28
         ),
       ),
     ),
   );
}