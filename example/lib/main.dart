import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.light(),
        home: MyStatefulApp(),
      );
}

class MyStatefulApp extends StatefulWidget {
  @override
  _MyStatefulAppState createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 12,
          backgroundColor: Colors.blueAccent,
          title: Text('OSM'),
        ),
        body: Center(
          child: Text(
            'Hello',
          ),
        ),
      );
}
