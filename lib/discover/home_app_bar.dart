import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatefulWidget implements PreferredSizeWidget {
  final double contentHeight; //从外部指定高度
  HomeAppbar({
    this.contentHeight = 50,
  }) : super();

  @override
  State<StatefulWidget> createState() {
    return new _HomeAppbarState();
  }

  @override
  Size get preferredSize => new Size.fromHeight(contentHeight);
}

/// 这里没有直接用SafeArea，而是用Container包装了一层
/// 因为直接用SafeArea，会把顶部的statusBar区域留出空白
/// 外层Container会填充SafeArea，指定外层Container背景色也会覆盖原来SafeArea的颜色
///     var statusheight = MediaQuery.of(context).padding.top;  获取状态栏高度

class _HomeAppbarState extends State<HomeAppbar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.transparent,
      child: new SafeArea(
        top: true,
        child: new Container(
            height: widget.contentHeight,
            child: new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  right: 0,
                  child: new Container(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container (
                      width: 30,
                      height: 40,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}