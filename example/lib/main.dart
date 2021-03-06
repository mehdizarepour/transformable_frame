import 'package:flutter/material.dart';
import 'package:transformable_frame/transformable_frame.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black12,
          child: Stack(
            children: <Widget>[
              // Transformable(
              //   child: Image.asset(
              //     'assets/5.png',
              //     fit: BoxFit.fill,
              //   ),
              // ),
              TransformableFrame(
                visable: true,
                size: Size(300, 300),
                onTap: () {
                  print('Tap');
                },
                onClose: () {
                  print('object');
                },
                child: Image.asset(
                  'assets/5.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
