import 'package:flutter/cupertino.dart';

class ListContainer extends Container {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset("images/dog.jpeg"),
        Image.asset("images/dog.jpeg"),
        Image.asset("images/dog.jpeg"),
        Text("我是你的人啊")
      ],
    );
  }

}