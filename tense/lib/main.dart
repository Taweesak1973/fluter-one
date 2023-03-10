import 'package:flutter/material.dart';
import 'package:test/screen/detail_screen.dart';

import 'screen/future_screen.dart';
import 'screen/past_screen.dart';
import 'screen/present_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tens structure',
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(
                children: const [
                  HomePageBox(name: 'Past Tense'),
                  HomePageBox(name: 'Present Tense'),
                  HomePageBox(name: 'Future Tense')
                ],
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.blueGrey.shade700,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyDetailPage()));
                    },
                    child: Image.asset('assets/lisa2.png', fit: BoxFit.contain),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageBox extends StatelessWidget {
  const HomePageBox({super.key, this.name});
  final String? name;
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.width;
   
    return Container(
      width: x*.33,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal:5),
        child: TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.blueGrey.shade900),
              foregroundColor: MaterialStateProperty.all(Colors.amber.shade800),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  if (name == 'Past Tense') {
                    return const PastScreenPage();
                  } else if (name == 'Present Tense') {
                    return const PresentScreenPage();
                  } else {
                    return const FutureScreenPage();
                  }
                },
              ));
            },
            child: Text(name!)),
      ),
    );
  }
}
