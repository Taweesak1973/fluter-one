import 'package:flutter/material.dart';

class HeadBox extends StatelessWidget {
  const HeadBox({this.name,
    super.key,
  });
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child:  Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Text(
          name!,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
