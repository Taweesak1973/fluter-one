import 'package:flutter/material.dart';

class MyQuestion extends StatelessWidget {
  MyQuestion({super.key, this.name, this.height, this.width,required this.mar});
  Widget? name;
  double? width = 80;
  double? height = 50;
  double mar = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: mar),
        decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadiusDirectional.circular(10)),
        width: width,
        height: height,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: name,
        )));
  }
}
