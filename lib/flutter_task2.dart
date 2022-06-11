import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:testproject/calculator.dart';
import 'package:testproject/flutter_task_1.dart';
import 'package:testproject/login.dart';

class FlutterTask2 extends StatefulWidget {
  const FlutterTask2({Key? key}) : super(key: key);

  @override
  State<FlutterTask2> createState() => _FlutterTask2State();
}

class _FlutterTask2State extends State<FlutterTask2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Home is Clicked",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
            ListTile(
                title: Text("Row Column"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FlutterTask1()));
                }),
            ListTile(
                title: Text("Calculator"),
                onTap: () {
                  Navigator.pushNamed(context, 'calculator');
                }),
            ListTile(
                title: Text("Login"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginWidget()));
                }),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "calculator");
                },
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/anime.png"),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(),
                        ),
                        Container(
                          child: Text(
                            "Hello",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 20.0),
                          ),
                          padding: EdgeInsets.all(15),
                          width: 360,
                          height: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.blue),
                        ),
                        Container(
                          child: Text(
                            "Hello",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 20.0),
                          ),
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(top: 10),
                          width: 360,
                          height: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.blue),
                        ),
                        Container(
                          child: Image.asset("assets/bird.png"),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(),
                        ),
                        Container(
                          child: Image.asset("assets/anime.png"),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(),
                        ),
                        Container(
                          child: Image.asset("assets/pokemon.png"),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(),
                        ),
                        Container(
                          child: Image.asset("assets/anime.png"),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
