import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatefulWidget implements PreferredSizeWidget {
  final double contentHeight; //从外部指定高度
  HomeAppbarState state;

  HomeAppbar({
    this.contentHeight = 60,
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
      child: SafeArea(
        top: true,
        child: Container(
            height: widget.contentHeight,
            child: new Stack(
              children: <Widget>[
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
                        color: Color(0x80ffffff)
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 2,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration:  BoxDecoration(
                                color: Color(0xffee5a63),
                              ),
                              child: Image.asset("images/test1.jpg"),
                            )),
                        Container(
                          width: 4,
                        ),
                        Text(
                          "天行健君子",
                           style: TextStyle(
                             color: Color(0xff1e1e1e),
                             fontSize: 10,
                             fontWeight: FontWeight.w500
                           ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}