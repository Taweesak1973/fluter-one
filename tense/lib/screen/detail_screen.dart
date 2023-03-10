import 'package:flutter/material.dart';

class MyDetailPage extends StatefulWidget {
  const MyDetailPage({super.key});

  @override
  State<MyDetailPage> createState() => _MyDetailPageState();
}

class _MyDetailPageState extends State<MyDetailPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Container(
      width: double.infinity,
      child: Column(children: [
        Expanded(
            child: Column(
              children: [
                Container(
          color: Colors.blueGrey.shade300,
          child: Center(child: const Text('Present Tense')),
        ),
                Container(
          color: Colors.blueGrey.shade300,
          child: const Text('Present '),
        ),
              ],
            )),
        Expanded(child: Container()),
        Expanded(child: Container()),
        Expanded(child: Container()),
      ]),
    ),
    Text('xxx'),
    Text('yyy')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
