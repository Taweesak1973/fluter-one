import 'package:flutter/material.dart';

import '../ulitity/sub_text_style.dart';

class NameSubText4 extends StatelessWidget {
  NameSubText4({this.nameSubText4});
  String? nameSubText4 ='';

  @override
  Widget build(BuildContext context) {
    return Text(nameSubText4!,style: subTextStyle);
  }
}
