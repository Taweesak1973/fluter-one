import 'package:flutter/material.dart';

import '../ulitity/sub_text_style.dart';

class NameSubText3 extends StatelessWidget {
  NameSubText3({
    this.nameSubText3,
  });
  String? nameSubText3 = '';

  @override
  Widget build(BuildContext context) {
    return Text(nameSubText3!,style: subTextStyle);
  }
}