import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Pomodurance';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Color(0xFFECF7FE),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFCA4A4A),
          title: const Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          singleForm("Number of Work Periods"),
          singleForm("Study/Break splits | ie. 25 5"),
          singleForm("Short/Long break ratio | ie. 4 1"),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Color(0xFFCA4A4A), // background
                onPrimary: Color(0xFFFFFFF), // foreground
                minimumSize: Size(200, 55),
              ),
              child: Text('Ready!', style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 30)),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class singleForm extends StatelessWidget {
  singleForm(this.textvalue);

  final String textvalue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return (Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
      child: Container(
        width: size.width * 0.8,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF8AFFC1),
            border: OutlineInputBorder(),
            labelText: textvalue,
          ),
        ),
      ),
    ));
  }
}
