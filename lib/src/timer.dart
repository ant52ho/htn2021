import 'package:flutter/material.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key = const Key("any_key")}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1500;
  String _display = "00:00";
  late Timer _timer;

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  void _startTimer() {
    _counter = 1500;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter = _counter - 1;
          var now = Duration(seconds: _counter);
          _display = "${_printDuration(now)}";
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
            timerheading("WORK FOR"),
            Text(
              _display,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            timerheading("MINUTES!"),
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

class timerheading extends StatelessWidget {
  timerheading(this.textvalue);

  final String textvalue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return (Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Text(
        textvalue,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    ));
  }
}
