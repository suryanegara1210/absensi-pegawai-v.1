import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
// import 'camerascreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Absensi Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Absensi Mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                        width: 150,
                        child: FlatButton(
                            color: Colors.amber,
                            onPressed: () {
                              setState(() {
                                // counter = 1;
                              });
                            },
                            child: Text('Registrasi Data'))),
                    SizedBox(
                        width: 150,
                        child: FlatButton(
                            color: Colors.amber,
                            onPressed: () {
                              setState(() {
                                // counter = 1;
                              });
                            },
                            child: Text('Absensi'))),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
