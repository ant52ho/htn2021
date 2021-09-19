import 'package:flutter/material.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key = const Key("any_key")}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 30;
  late Timer _timer;

  void _startTimer() {
    _counter = 30;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter = _counter - 1;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (_counter > 0)
                ? Text("")
                : Text(
                    "DONE!",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
            Text(
              '$_counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
              ),
              child: Text('Start!'),
              onPressed: () => _startTimer(),
            ),
          ],
        ),
      ),
    );
  }
}
