import 'package:flutter/cupertino.dart';

class CircleTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
          "assets/images/Cover.jpg",
          height: 50,
          width: 50,
          fit: BoxFit.cover
      ),
    );
  }

}