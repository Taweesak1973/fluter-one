import 'package:flutter/material.dart';

class Model extends StatelessWidget {
  static BoxDecoration boxDecoration = BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(20));
  static const Color backgroundColor = Colors.black;
  static const TextStyle styleBig = TextStyle(
      fontSize: 30,
      color: Color.fromARGB(255, 252, 112, 5),
      fontWeight: FontWeight.w900);
  static const TextStyle styleMidle =
      TextStyle(fontSize: 25, color: Color.fromARGB(255, 252, 163, 8));
  static const TextStyle styleSmall =
      TextStyle(fontSize: 18, color: Colors.white70);
  final double x = 4;
  final double y = 2;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      color: Colors.blueGrey.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            color: Colors.blueGrey.shade900,
            child: const Center(
                child: Text(
              'Presen Tense',
              style: styleBig,
            )),
          )),
          newMethod(height, width),
          newMethod(height, width),
          newMethod(height, width),
          newMethod(height, width),
      
          //------------------
        ],
      ),
    );
  }

  Expanded newMethod(double height, double width) {
    return Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: y, horizontal: x),
              child: Container(
                color: backgroundColor,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 40),
                      height: height*.2,
                      width: width*.5,
                        decoration: boxDecoration,
                        child:
                            const Padding(
                              padding: EdgeInsets.only(top: 10,left: 10),
                              child: Text('Present Simple Tense', style: styleMidle),
                            )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     
                      children: [
                        Container(
                            decoration: boxDecoration,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('S + V1(s)', style: styleSmall),
                            )),
                        const Text('I go.', style: styleSmall),
                        const Text('We go.', style: styleSmall),
                        const Text('He goes.', style: styleSmall),
                      ],
                    ),
                  ],
                ),
              ),
            ));
  }
}
