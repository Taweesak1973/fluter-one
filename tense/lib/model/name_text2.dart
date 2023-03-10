import 'package:flutter/material.dart';

import '../ulitity/sub_text_style.dart';

class NameSubText2 extends StatelessWidget {
  NameSubText2({this.nameSubText2});
  String? nameSubText2='';

  @override
  Widget build(BuildContext context) {
    return Text(nameSubText2!,style: subTextStyle);
  }
}