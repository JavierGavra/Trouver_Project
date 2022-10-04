import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GenreViewWidget extends StatelessWidget {
  GenreViewWidget({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 80,
      // padding: EdgeInsets.symmetric(horizontal: 80),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xff3A3F47),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: Color(0xffeeeeee)),
      ),
    );
  }
}
