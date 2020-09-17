import 'package:flutter/material.dart';
import 'package:tests/icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildContainer(MyFlutterApp.home_5, 0),
          buildContainer(MyFlutterApp.heart_outline, 1),
          buildContainer(MyFlutterApp.sliders, 2),
        ],
      ),
      body: Center(
        child: Text('selectedt index: $selectedIndex',style: TextStyle(fontSize: 30),),
      ),
    );
    // Container bottom()
  }

  Widget buildContainer(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            selectedIndex = index;
          },
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 22),
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: index == selectedIndex ? Colors.black : Colors.grey,
              size: 30,
            ),
            Container(
              child: index == selectedIndex
                ? Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  )
                : Container(
                    height: 10,
                    width: 10,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
