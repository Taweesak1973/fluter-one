import 'package:flutter/material.dart';

class ListResult extends StatelessWidget {
  ListResult({this.listResult});
  List<bool>? listResult = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listResult!.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
              child: Column(
            children: [
              Text((index+1).toString()),
          
              const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text('___'),
              ),
              listResult![index] == true
                  ? const Icon(
                      Icons.check,
                      color: Colors.green,
                    )
                  : const Icon(
                      Icons.close,
                      color: Colors.red,
                    )
            ],
          )),
        );
      },
    );
  }
}
