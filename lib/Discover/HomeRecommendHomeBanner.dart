import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeRecommendBanner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
     return HomeRecommendBannerState();
  }
}

class HomeRecommendBannerState extends State<HomeRecommendBanner> {
  List<String> imgs=[
    'http://puui.qpic.cn/media_img/lena/PIC8p5vuf_639_1029/0',
    'http://puui.qpic.cn/media_img/lena/PIC8p5vuf_639_1029/0',
    'http://puui.qpic.cn/media_img/lena/PIC8p5vuf_639_1029/0',
    'http://puui.qpic.cn/media_img/lena/PIC8p5vuf_639_1029/0'
  ];

  @override
  Widget build(BuildContext context) {
     return Container(
       height: 226,
       margin: EdgeInsets.only(left: 16, right: 16, bottom: 13),
       child: new Swiper(
         itemBuilder: (BuildContext context,int index){
           return ClipRRect(
             borderRadius: BorderRadius.circular(12),
             child: Image.network(imgs[index],fit: BoxFit.cover)
           );
         },
         itemCount: imgs.length
       ),
     );
  }
}