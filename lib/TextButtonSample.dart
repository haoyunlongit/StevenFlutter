import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextButtonSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.only(left: 12, right: 12)),
          minimumSize: MaterialStateProperty.all(Size(20, 24)),
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 13.0, color: Colors.white)),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            return Colors.red;
          }),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            return Colors.white;
          }),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(12)))
      ),
      child: Text(
        "test",
        textAlign: TextAlign.center,
      ),
      onPressed: () {},
    );
  }

}