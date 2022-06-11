import 'package:flutter/material.dart';

class FlutterTask1 extends StatefulWidget {
  const FlutterTask1({Key? key}) : super(key: key);

  @override
  State<FlutterTask1> createState() => _FlutterTask1State();
}

class _FlutterTask1State extends State<FlutterTask1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(28),
                  child: Text("Hello"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(28),
                  child: Text("Hello"),
                  color: Colors.purple,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(28),
                  child: Text("Hello"),
                  color: Colors.purple,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(28),
                  child: Text("Hello"),
                  color: Colors.purple,
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(28),
              child: Text("Hello"),
              color: Colors.red,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(28),
              child: Text("Hello"),
              color: Colors.blue,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(28),
                child: Text("Hello"),
                color: Colors.green),
          ],
        ),
      ),
    );
  }
}
