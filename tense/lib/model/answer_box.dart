import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  NewWidget({this.questionWord, this.onPress});

  final String? questionWord;
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(
            style: ButtonStyle(
               shape: MaterialStateProperty.all<OutlinedBorder>(
                const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            )),
               
              
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
              foregroundColor:
                  MaterialStateProperty.all(Colors.white70),
              backgroundColor:
                  MaterialStateProperty.all(Colors.black),
            ),
            onPressed: onPress,
            child: Text(questionWord!)),
      ),
    );
  }
}






