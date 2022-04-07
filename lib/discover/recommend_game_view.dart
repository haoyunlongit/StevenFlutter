import 'package:flutter/material.dart';
import 'package:helloworld/discover/recommend_subview.dart';

import '../constant/constant.dart';

class HomeRecommendGameView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeRecommendGameViewState();
  }
}

class HomeRecommendGameViewState extends State<HomeRecommendGameView> {
  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: Constant.COMMON_VIEW_MARGIN),
          child: Row(
            children: [
              HomeRecommendGameSubView1(),
              Container( /// 此组件在主轴方向占据48.0逻辑像素
                  width: 7.0
              ),
              HomeRecommendGameSubView2(),
              Container( /// 此组件在主轴方向占据48.0逻辑像素
                  width: 7.0
              ),
              HomeRecommendGameSubView2()
            ],
          )
     );
  }
}

class HomeRecommendGameSubView1 extends StatelessWidget {
  String webpUrl = "https://vfiles.gtimg.cn/wupload/bbg_business.t_bbg_hot_game/20220314_3v32gyfzhl5.webp";

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    final double containerWidth = (size.width - Constant.COMMON_VIEW_MARGIN * 2 - 7) / 2;

    return Container(
        width: containerWidth,
        height: 195,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
               children: [
                 Container(
                    width: containerWidth,
                    height: 195,
                    child: Image.network(webpUrl, fit: BoxFit.cover),
                 ),
                 Container(
                     margin: EdgeInsets.only(top: 10, left: 10),
                     child: HomeRecommendLabelView("全城嗨玩")
                 ),
                 Container(
                     alignment: Alignment.bottomLeft,
                     margin: EdgeInsets.only(bottom: 30, left: 10),
                     padding: EdgeInsets.only(top: 2, bottom: 2),
                     child: Text(
                         '极限拉扯-闯关版',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 15.0,
                             fontWeight: FontWeight.w500,
                             color: Colors.white
                         )
                     )
                 ),
                 Container(
                     alignment: Alignment.bottomLeft,
                     margin: EdgeInsets.only(bottom: 12, left: 10),
                     padding: EdgeInsets.only(top: 2, bottom: 2),
                     child: Text(
                         '魔性一扯到底',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 11.0,
                             fontWeight: FontWeight.w500,
                             color: Colors.white
                         )
                     )
                 )
               ],
            )
        )
    );
  }
}

class HomeRecommendGameSubView2 extends StatelessWidget {
  String mockUrl1 = "https://vfiles.gtimg.cn/wupload/bbg_business.t_bbg_hot_game/20220311_j9vjif51t8.png";
  String mockUrl2 = "https://vfiles.gtimg.cn/wupload/bbg_business.t_bbg_hot_game/20220311_cffwcly2sdg.png";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double containerWidth = (size.width - Constant.COMMON_VIEW_MARGIN * 2 - 7) / 2;
    final double posterLeft = containerWidth - 80 - 8;
    final double posterTop = -10;
    return Container(
        width: containerWidth,
        height: 195,
        child: Column (
           children: [
             Stack(
               children: [
                 Container(
                   width: containerWidth,
                   height: 94,
                   decoration:  BoxDecoration(
                       color: Color(0xffee5a63),
                       borderRadius: BorderRadius.all(Radius.circular(12))
                   ),
                 ),
                 Container(
                     margin: EdgeInsets.only(top: 10, left: 10),
                     child: HomeRecommendLabelView("全城嗨玩")
                 ),
                 Container(
                     margin: EdgeInsets.only(top: 42, left: 10),
                     padding: EdgeInsets.only(top: 2, bottom: 2),
                     child: Text(
                         '荒漠大乱斗',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 15.0,
                             fontWeight: FontWeight.w500,
                             color: Colors.white
                         )
                     )
                 ),
                 Container(
                     margin: EdgeInsets.only(bottom: 12, left: 10),
                     padding: EdgeInsets.only(top: 66, bottom: 2),
                     child: Text(
                         '魔性一扯到底',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 11.0,
                             fontWeight: FontWeight.w500,
                             color: Colors.white
                         )
                     )
                 ),
                 Container(
                   width: 80,
                   height: 80,
                   transform: Matrix4.translationValues(0, posterTop, 0),
                   margin: EdgeInsets.only(left: posterLeft),
                   child: Image.network(mockUrl1, fit: BoxFit.cover),
                 )
               ],
             ),
             Container( /// 此组件在主轴方向占据48.0逻辑像素
                 height: 7.0
             ),
             Stack(
               children: [
                 Container(
                   width: containerWidth,
                   height: 94,
                   decoration:  BoxDecoration(
                       color: Color(0xff3db7bd),
                       borderRadius: BorderRadius.all(Radius.circular(12))
                   ),
                 ),
                 Container(
                     margin: EdgeInsets.only(top: 10, left: 10),
                     child: HomeRecommendLabelView("全城嗨玩")
                 ),
                 Container(
                     margin: EdgeInsets.only(top: 42, left: 10),
                     padding: EdgeInsets.only(top: 2, bottom: 2),
                     child: Text(
                         '极限拉扯-闯关版',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 15.0,
                             fontWeight: FontWeight.w500,
                             color: Colors.white
                         )
                     )
                 ),
                 Container(
                     margin: EdgeInsets.only(bottom: 12, left: 10),
                     padding: EdgeInsets.only(top: 66, bottom: 2),
                     child: Text(
                         '魔性一扯到底',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 11.0,
                             fontWeight: FontWeight.w500,
                             color: Colors.white
                         )
                     )
                 ),
                 Container(
                   width: 80,
                   height: 80,
                   transform: Matrix4.translationValues(0, posterTop, 0),
                   margin: EdgeInsets.only(left: posterLeft),
                   child: Image.network(mockUrl2, fit: BoxFit.cover),
                 )
               ],
             )
           ],
        ),
    );
  }
}
