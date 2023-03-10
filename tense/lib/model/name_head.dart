import 'package:flutter/material.dart';

import '../ulitity/head_text_style.dart';

class NameHeadText extends StatelessWidget {
  NameHeadText({this.nameHeadText});
  String? nameHeadText='';

  @override
  Widget build(BuildContext context) {
    return Text(nameHeadText!,style: headTextStyle,);
  }
}