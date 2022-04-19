import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //居中展示
    return Row(
      //添加网络图片
      children: [
        CachedNetworkImage(
          imageUrl: "https://vfiles.gtimg.cn/wupload/bbg_business_test.t_bbg_big_horn/20220311_6fhlt5qpd2x.png",
          imageBuilder: (context, imageProvider) {
            return Container(
              width: 60,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
            );
          },
        ),
        Image.network(
          //图片url
          'https://flutter.io/images/flutter-mark-square-100.png',
          //填充模式
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}