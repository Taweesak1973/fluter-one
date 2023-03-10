import 'package:flutter/material.dart';

import '../ulitity/sub_text_style.dart';

class NameSubText5 extends StatelessWidget {
  NameSubText5({this.nameSubText5});
  String? nameSubText5 ='';

  @override
  Widget build(BuildContext context) {
    return Text(nameSubText5!,style: subTextStyle);
  }
}
