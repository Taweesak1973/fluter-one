import 'package:flutter/material.dart';

import '../ulitity/sub_text_style.dart';

class NameSubText1 extends StatelessWidget {
  NameSubText1({this.nameSubText1});
  String? nameSubText1='';

  @override
  Widget build(BuildContext context) {
    return Text(nameSubText1!,style: subTextStyle,);
  }
}