import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatefulWidget implements PreferredSizeWidget {
  final double contentHeight; //从外部指定高度
  HomeAppbarState state;

  HomeAppbar({
    this.contentHeight = 50,
  }) : super();

  @override
  State<StatefulWidget> createState() {
    state = HomeAppbarState();
    return state;
  }

  @override
  Size get preferredSize => new Size.fromHeight(contentHeight);

  void setAlpha(double alpha) {
    state.setAlpha(alpha);
  }
}

/// 这里没有直接用SafeArea，而是用Container包装了一层
/// 因为直接用SafeArea，会把顶部的statusBar区域留出空白
/// 外层Container会填充SafeArea，指定外层Container背景色也会覆盖原来SafeArea的颜色
///     var statusheight = MediaQuery.of(context).padding.top;  获取状态栏高度

class HomeAppbarState extends State<HomeAppbar> {
  Color bgColor = Color(0x00eff3f6);

  @override
  void initState() {
    super.initState();
  }

  void setAlpha(double alpha) {
    setState(() {
      double alphaInt = (alpha * 255);
      bgColor = Color.fromARGB(alphaInt.toInt(), 239, 243, 246);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: bgColor,
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
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}