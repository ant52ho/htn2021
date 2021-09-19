import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello!'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextSection(Colors.red),
              TextSection(Colors.blue),
              TextSection(Colors.green),
            ],
          )),
    );
  }
}

class TextSection extends StatelessWidget {
  Color _color;
  TextSection(this._color);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
      ),
      child: Text('hello'),
    );
  }
}
